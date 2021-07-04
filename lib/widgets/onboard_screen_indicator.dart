import 'package:flutter/material.dart';

class OnboardScreenIndicator extends StatelessWidget {
  const OnboardScreenIndicator(this._color, this._index);

  final Color _color;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i <= 3; i++)
          Container(
            margin: EdgeInsets.only(right: 7),
            width: 9,
            height: 9,
            decoration: BoxDecoration(
              color: i == _index ? _color : null,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: _color.withOpacity(0.6), width: 1),
            ),
          )
      ],
    );
  }
}
