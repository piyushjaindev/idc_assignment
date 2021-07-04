import 'package:flutter/material.dart';

import '../screens/mobile_login_screen.dart';

class OnboardSkipButton extends StatelessWidget {
  const OnboardSkipButton([this._color = Colors.white70]);

  final Color _color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MobileLoginScreen(),
            ));
      },
      child: Text(
        'skip',
        style: TextStyle(
          fontFamily: 'Asap',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: _color,
        ),
      ),
    );
  }
}
