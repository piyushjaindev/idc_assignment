import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/onboard_screen_image.dart';
import '../widgets/onboard_screen_indicator.dart';
import '../widgets/onboard_skip_button.dart';

class OnboardScreen2 extends StatelessWidget {
  const OnboardScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final widthFactor = width / mockupWidth;
    final heightFactor = height / mockupHeight;
    return Scaffold(
      backgroundColor: Color(0xFF64B3FD),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [OnboardSkipButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OnboardScreenImage('screen2.png'),
            SizedBox(height: 180 * heightFactor),
            Text(
              'Choose like a',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w700,
                fontSize: 19,
                color: Color(0xFFF9FAFE),
              ),
            ),
            Row(
              children: [
                Text(
                  'Pro! ',
                  textScaleFactor: widthFactor,
                  style: TextStyle(
                    fontFamily: 'Asap',
                    fontWeight: FontWeight.w700,
                    fontSize: 50,
                    color: Color(0xFF193853),
                  ),
                ),
                Text(
                  '✅',
                  textScaleFactor: widthFactor,
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            SizedBox(height: 35 * heightFactor),
            FractionallySizedBox(
              widthFactor: 0.65,
              child: Text(
                'No matter what aspect of college life you are looking for, we provide listings and rankings based on your preferences.',
                textAlign: TextAlign.justify,
                textScaleFactor: widthFactor,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFFBFCFE),
                ),
              ),
            ),
            Spacer(),
            OnboardScreenIndicator(Colors.white, 1),
            SizedBox(
              height: 30 * heightFactor,
            ),
          ],
        ),
      ),
    );
  }
}
