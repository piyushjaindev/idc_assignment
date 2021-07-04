import 'package:flutter/material.dart';

class MoreLoginOptions extends StatelessWidget {
  const MoreLoginOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => MoreOptionBottomSheet(),
        );
      },
      child: Text(
        'more login options ^',
        style: TextStyle(
          fontFamily: 'Asap',
          fontWeight: FontWeight.w500,
          fontSize: 10,
          color: Color(0xFFA3A4A6),
        ),
      ),
    );
  }
}

class MoreOptionBottomSheet extends StatelessWidget {
  const MoreOptionBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFFF9FAFE),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(38),
            topRight: Radius.circular(38),
          )),
      child: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Continue with Google')),
          ElevatedButton(
              onPressed: () {}, child: Text('Continue with Facebook')),
          Text(
              'By selecting one or the other, you are agreeing to the Terms of Services & Privacy Policy'),
        ],
      ),
    );
  }
}
