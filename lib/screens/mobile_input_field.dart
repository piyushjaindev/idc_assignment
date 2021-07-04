import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';
import 'mobile_otp_screen.dart';
import '../widgets/alert_container.dart';

class MobileInputField extends StatefulWidget {
  const MobileInputField({Key? key}) : super(key: key);

  @override
  _MobileInputFieldState createState() => _MobileInputFieldState();
}

class _MobileInputFieldState extends State<MobileInputField> {
  bool _loading = false;
  bool _isValid = true;

  void _validateInput(String number) {
    setState(() {
      _loading = true;
    });
    Future.delayed(Duration(
      seconds: 1,
    )).then((_) {
      setState(() {
        _loading = false;
        _isValid = number.length == 10;
      });
      if (_isValid)
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MobileOTPScreen(number),
            ));
      else
        HapticFeedback.mediumImpact();
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final widthFactor = width / mockupWidth;
    final heightFactor = height / mockupHeight;

    return Column(
      children: [
        _buildTextField(widthFactor),
        SizedBox(height: 50 * heightFactor),
        if (_loading)
          SizedBox(
            width: 160 * widthFactor,
            height: 65 * heightFactor,
            child: Lottie.asset('assets/lottie/lottie.json'),
          ),
        if (!_loading && !_isValid)
          AlertContainer(
            widthFactor: widthFactor,
            color: Color(0xFFF65B2A),
            alertText: 'Please Enter a valid mobile number',
          ),
      ],
    );
  }

  Widget _buildTextField(double widthFactor) {
    return Center(
      child: SizedBox(
        width: 175,
        child: TextField(
          keyboardType: TextInputType.numberWithOptions(signed: true),
          textInputAction: TextInputAction.done,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          onSubmitted: (value) {
            _validateInput(value.trim());
          },
          style: TextStyle(
            fontFamily: 'Asap',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFFA4A4A4),
            letterSpacing: 1.35,
          ),
          decoration: InputDecoration(
            icon: Text(
              '+91',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w500,
                fontSize: 23,
                color: Color(0xFFA4A4A4),
              ),
            ),
            contentPadding: EdgeInsets.zero,
            hintText: 'Enter here',
            hintStyle: TextStyle(
              fontFamily: 'Asap',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFFC2C3C2),
              letterSpacing: 0,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF58ABF9),
                width: 2.0,
              ),
            ),
            enabledBorder: _isValid
                ? InputBorder.none
                : UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFF65B2A),
                      width: 2.0,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
