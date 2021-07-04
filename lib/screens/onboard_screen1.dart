import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/onboard_screen_image.dart';
import '../widgets/onboard_screen_indicator.dart';
import '../widgets/onboard_skip_button.dart';

class OnboardScreen1 extends StatelessWidget {
  const OnboardScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final widthFactor = width / mockupWidth;
    final heightFactor = height / mockupHeight;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [OnboardSkipButton(Color(0xFF000000).withOpacity(0.4))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OnboardScreenImage('screen1.png'),
            SizedBox(height: 180 * heightFactor),
            Text(
              'Explore like a',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontWeight: FontWeight.w700,
                fontSize: 19,
                color: Color(0xFF64B3FD),
              ),
            ),
            Row(
              children: [
                Text(
                  'Ninja! ',
                  textScaleFactor: widthFactor,
                  style: TextStyle(
                    fontFamily: 'Asap',
                    fontWeight: FontWeight.w700,
                    fontSize: 50,
                    color: Color(0xFF193853),
                  ),
                ),
                Image.asset(
                  'assets/images/ninja.png',
                  width: 40 * widthFactor,
                ),
              ],
            ),
            SizedBox(height: 35 * heightFactor),
            FractionallySizedBox(
              widthFactor: 0.65,
              child: Text(
                'Take your career to next level with personalized career info based on your interests, skill & personality.',
                textAlign: TextAlign.justify,
                textScaleFactor: widthFactor,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFA9A9A9),
                ),
              ),
            ),
            Spacer(),
            OnboardScreenIndicator(Color(0xFF64B3FD), 0),
            SizedBox(
              height: 30 * heightFactor,
            ),
          ],
        ),
      ),
    );
  }
}
