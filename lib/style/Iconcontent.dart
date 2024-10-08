import 'package:asnani_app/style/constant.dart';
import 'package:flutter/material.dart';

const sizedBox = SizedBox(
  height: 10.0,
);


const iconSize = 20.0;

class IconContent extends StatelessWidget {
  final IconData myicon;
  final String text;
  IconContent({required this.myicon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Icon(
          myicon,
          size: iconSize,
        ),
        sizedBox,
        Text(
          text,
          
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
