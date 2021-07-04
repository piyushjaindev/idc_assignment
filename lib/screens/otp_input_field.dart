import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:code_fields/code_fields.dart';
import 'package:lottie/lottie.dart';

import '../constants.dart';
import 'feed_screen.dart';
import '../widgets/alert_container.dart';

class OTPInputField extends StatefulWidget {
  const OTPInputField({Key? key}) : super(key: key);

  @override
  _OTPInputFieldState createState() => _OTPInputFieldState();
}

class _OTPInputFieldState extends State<OTPInputField> {
  bool _loading = false;
  bool _isValid = true;
  bool _isComplete = false;

  void _validateOTP(String otp) {
    setState(() {
      _loading = true;
    });
    Future.delayed(Duration(seconds: 1)).then((_) {
      setState(() {
        _loading = false;
        _isValid = otp == '858585';
        _isComplete = true;
      });
      if (_isValid)
        Future.delayed(Duration(milliseconds: 500)).then((value) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FeedScreen(),
              ));
        });
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
        if (!_loading && !_isValid && _isComplete)
          AlertContainer(
            widthFactor: widthFactor,
            color: Color(0xFFF65B2A),
            alertText: 'OTP Incorrect',
          ),
        if (!_loading && _isValid && _isComplete)
          AlertContainer(
            widthFactor: widthFactor,
            color: Color(0xFF00BF86),
            alertText: 'OTP Correct',
          ),
      ],
    );
  }

  Widget _buildTextField(double widthFactor) {
    return Center(
      child: CodeFields(
        length: 6,
        keyboardType: TextInputType.number,
        autofocus: true,
        fieldHeight: 55,
        fieldWidth: 35,
        onChanged: (value) {
          //print(value);
        },
        onCompleted: (value) {
          _validateOTP(value.trim());
        },
        textStyle: TextStyle(
          fontFamily: 'Asap',
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Color(0xFF4A4A4A),
        ),
        inputDecoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF62B1F4),
              width: 2.0,
            ),
          ),
          enabledBorder: _isComplete
              ? UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: _isValid ? Color(0xFF00BF86) : Color(0xFFFF5B51),
                    width: 2.0,
                  ),
                )
              : null,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFC8C8C8),
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
