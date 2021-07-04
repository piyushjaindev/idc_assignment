import 'package:flutter/material.dart';

import '../constants.dart';
import '../widgets/onboard_screen_image.dart';
import '../widgets/onboard_screen_indicator.dart';
import '../widgets/onboard_skip_button.dart';

class OnboardScreen3 extends StatelessWidget {
  const OnboardScreen3({Key? key}) : super(key: key);

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
            OnboardScreenImage('screen3.png'),
            SizedBox(height: 180 * heightFactor),
            Text(
              'Prepare for the',
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
                  'Real world! ',
                  textScaleFactor: widthFactor,
                  style: TextStyle(
                    fontFamily: 'Asap',
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Color(0xFF193853),
                  ),
                ),
                Image.asset(
                  'assets/images/building.png',
                  width: 40 * widthFactor,
                ),
              ],
            ),
            SizedBox(height: 45 * heightFactor),
            FractionallySizedBox(
              widthFactor: 0.65,
              child: Text(
                'We\'ll show you exactly what to do to make your dream job a reality',
                textAlign: TextAlign.justify,
                textScaleFactor: widthFactor,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFFA9A9A9),
                ),
              ),
            ),
            Spacer(),
            OnboardScreenIndicator(Color(0xFF64B3FD), 2),
            SizedBox(
              height: 30 * heightFactor,
            ),
          ],
        ),
      ),
    );
  }
}
