import 'package:flutter/material.dart';
import 'constant.dart';
class bottombutton extends StatelessWidget {
  bottombutton({@required this.ontap,@required this.title});
  final Function ontap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(


      onTap: ontap,
      child: Container(
        color: KBottomContainerColor,
        margin: EdgeInsets.only(top:18.0),
       // padding: EdgeInsets.only(bottom:20.0),
        child: Center(
          child: Text(title,

              style:Klargebottomstyletext),
        ),
        width: double.infinity,
        height: KBottomheight,
      ),
    );
  }
}

