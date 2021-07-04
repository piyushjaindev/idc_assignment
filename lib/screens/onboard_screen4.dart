import 'package:flutter/material.dart';

import 'mobile_login_screen.dart';
import '../constants.dart';
import '../widgets/onboard_screen_image.dart';
import '../widgets/onboard_screen_indicator.dart';

class OnboardScreen4 extends StatelessWidget {
  const OnboardScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final widthFactor = width / mockupWidth;
    final heightFactor = height / mockupHeight;
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xFF64B3FD),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OnboardScreenImage('screen4.png'),
                SizedBox(height: 180 * heightFactor),
                Text(
                  'How can we',
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
                      'Help? ',
                      textScaleFactor: widthFactor,
                      style: TextStyle(
                        fontFamily: 'Asap',
                        fontWeight: FontWeight.w700,
                        fontSize: 50,
                        color: Color(0xFF193853),
                      ),
                    ),
                    Text(
                      '🤚',
                      textScaleFactor: widthFactor,
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
                SizedBox(height: 35 * heightFactor),
                FractionallySizedBox(
                  widthFactor: 0.65,
                  child: Text(
                    'Get ready for your transition from school to college and finally to a perfect career with us!',
                    textAlign: TextAlign.justify,
                    textScaleFactor: widthFactor,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFFBFCFE),
                    ),
                  ),
                ),
                Spacer(),
                OnboardScreenIndicator(Colors.white, 3),
                SizedBox(
                  height: 30 * heightFactor,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 35,
          right: 35,
          child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileLoginScreen(),
                  ));
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: 2.0, color: Color(0xFFFBFCFE)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Text(
              'Next',
              textScaleFactor: widthFactor,
              style: TextStyle(
                fontFamily: 'Asap',
                fontSize: 15,
                color: Color(0xFFFBFCFE),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
