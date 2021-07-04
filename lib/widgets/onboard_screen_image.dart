import 'package:flutter/material.dart';

class OnboardScreenImage extends StatelessWidget {
  const OnboardScreenImage(
    this._image, {
    Key? key,
  }) : super(key: key);

  final String _image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: AspectRatio(
          aspectRatio: 1,
          child: Image.asset(
            'assets/images/$_image',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
