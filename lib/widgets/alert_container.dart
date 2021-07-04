import 'package:flutter/material.dart';

class AlertContainer extends StatelessWidget {
  const AlertContainer(
      {Key? key,
      required this.widthFactor,
      required this.color,
      required this.alertText})
      : super(key: key);

  final double widthFactor;
  final Color color;
  final String alertText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color.withOpacity(0.11),
      ),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Text(
        alertText,
        textScaleFactor: widthFactor,
        style: TextStyle(
          fontFamily: 'Asap',
          fontWeight: FontWeight.w500,
          fontSize: 9,
          color: color,
        ),
      ),
    );
  }
}
