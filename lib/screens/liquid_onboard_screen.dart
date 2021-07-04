import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'onboard_screen1.dart';
import 'onboard_screen2.dart';
import 'onboard_screen3.dart';
import 'onboard_screen4.dart';

class LiquidOnboardScreen extends StatefulWidget {
  LiquidOnboardScreen({Key? key}) : super(key: key);

  @override
  _LiquidOnboardScreenState createState() => _LiquidOnboardScreenState();
}

class _LiquidOnboardScreenState extends State<LiquidOnboardScreen> {
  final pages = [
    OnboardScreen1(),
    OnboardScreen2(),
    OnboardScreen3(),
    OnboardScreen4()
  ];

  Widget? _slideIcon = SlideIconWidget();

  void onPageChange(int index) {
    if (index == 3)
      setState(() {
        _slideIcon = null;
      });
    else if (index == 1)
      setState(() {
        _slideIcon = SlideIconWidget(Color(0xFF626262));
      });
    else
      setState(() {
        _slideIcon = SlideIconWidget();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: false,
        slideIconWidget: _slideIcon,
        enableSideReveal: true,
        positionSlideIcon: 0.7,
        fullTransitionValue: 600,
        onPageChangeCallback: onPageChange,
      ),
    );
  }
}

class SlideIconWidget extends StatelessWidget {
  const SlideIconWidget([this._color = Colors.white60]);

  final Color _color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: _color, width: 1),
      ),
      child: Icon(
        Icons.chevron_left,
        size: 25,
        color: _color,
      ),
    );
  }
}
