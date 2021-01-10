import 'package:bmi_calculator/bottombutton.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/resuable_card.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'bottombutton.dart';
import 'input_page.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.BMIresult,@required this.Bmitext,@required this.bmiinterprtion});
  final String BMIresult;
  final String Bmitext;
  final String bmiinterprtion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULTOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
           padding: EdgeInsets.all(15.0),
            alignment:Alignment.bottomLeft ,
            child: Text('Your Result ',style : Ktiitletextstyle
          ),
          ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: KActiveCardColor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(Bmitext.toUpperCase()
                        ,style: KResulttextstyle),
                    Text(BMIresult,style: KBMItextstyle,),
                    Text(bmiinterprtion,style: Kbodytext,
                    textAlign: TextAlign.center,),

                  ],
                ),

              ),),
          bottombutton(ontap:(){
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
    },
           title: 'RE-CALCULATE')
        ],
      ) ,
    );
  }
}
