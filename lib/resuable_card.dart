import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardchild, this.onpress});

  final Widget cardchild;
  final Color colour;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: cardchild,

        margin: EdgeInsets.all(10),

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
          color: colour,
        ),
      ),
    );
  }
}