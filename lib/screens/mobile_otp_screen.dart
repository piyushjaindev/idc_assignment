import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/custom_back_button.dart';
import 'otp_input_field.dart';

class MobileOTPScreen extends StatelessWidget {
  final String number;

  const MobileOTPScreen(this.number, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final widthFactor = width / mockupWidth;
    final heightFactor = height / mockupHeight;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: CustomBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 65 * heightFactor),
            Text(
              'Enter OTP',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xFF193853),
              ),
            ),
            SizedBox(height: 6 * heightFactor),
            Text(
              'Please enter the verification code sent to $number',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Color(0xFFA3A4A6),
              ),
            ),
            SizedBox(height: 50 * heightFactor),
            Expanded(child: OTPInputField()),
            Center(
              child: FractionallySizedBox(
                widthFactor: 0.8,
                child: Image.asset('assets/images/otp.png'),
              ),
            ),
            SizedBox(height: 60 * heightFactor),
            Center(
              child: Text(
                'more login options ^',
                textScaleFactor: widthFactor,
                style: TextStyle(
                  fontFamily: 'Asap',
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color(0xFFA3A4A6),
                ),
              ),
            ),
            SizedBox(height: 25 * heightFactor)
          ],
        ),
      ),
    );
  }
}
