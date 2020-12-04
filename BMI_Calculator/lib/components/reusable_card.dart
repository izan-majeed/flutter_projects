import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Color highlight;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({
    @required this.colour,
    this.highlight = kInactiveCardColor,
    this.cardChild,
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all((15.0)),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: highlight),
      ),
    ),
    );
  }
}