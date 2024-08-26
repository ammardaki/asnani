import 'package:flutter/material.dart';

class ReusableBg extends StatelessWidget {
  // ignore: non_constant_identifier_names
  ReusableBg({required this.colour, required this.cardChild}); //remove required
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 75,
      child: cardChild,
      // margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
