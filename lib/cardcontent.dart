import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
class cardcontent extends StatelessWidget {
  cardcontent({this.icon,this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(label,
          style: KLabelTextStyle,
          ),

      ],
    );
  }}