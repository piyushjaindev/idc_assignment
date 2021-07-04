import 'package:flutter/material.dart';

import '../constants.dart';
import 'mobile_input_field.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/more_login_options.dart';

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({Key? key}) : super(key: key);

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
            SizedBox(height: 45 * heightFactor),
            Text(
              'Enter your',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Color(0xFF64B3FD),
              ),
            ),
            SizedBox(height: 3 * heightFactor),
            Text(
              'Mobile number',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w600,
                fontSize: 27,
                color: Color(0xFF193853),
              ),
            ),
            SizedBox(height: 6 * heightFactor),
            Text(
              'we will send you a One Time Password (OTP)',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Color(0xFFA3A4A6),
              ),
            ),
            SizedBox(height: 45 * heightFactor),
            Expanded(child: MobileInputField()),
            Center(
              child: FractionallySizedBox(
                widthFactor: 0.5,
                child: Image.asset('assets/images/mobile.png'),
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
