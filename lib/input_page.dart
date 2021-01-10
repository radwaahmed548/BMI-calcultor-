import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'resuable_card.dart';
import 'cardcontent.dart';
import 'constant.dart';
import 'result_page.dart';
import 'bottombutton.dart';
import 'calculator_brain.dart';

enum Gender {
  Male,
  Female,
}
class InputPage extends StatefulWidget {

    @override
    _InputPageState createState() => _InputPageState();
  }

  class _InputPageState extends State<InputPage> {
  Gender genderselected;
  int height=180;
  int weight=60;
  int age=19;


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('BMI CALCULATOR'),
  ),
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
  Expanded(
  child: Row(
  children: <Widget>[
  Expanded(
      child: ReusableCard(
        onpress: (){
          setState(() {
            genderselected= Gender.Male;
          });
        },

      colour: genderselected == Gender.Male? KActiveCardColor : KInactiveCardColor,
      cardchild: cardcontent(
      icon: FontAwesomeIcons.mars, label: 'MALE',),
      )),
  Expanded(
      child: ReusableCard(
        onpress: (){
          setState(() {
            genderselected=Gender.Female;
          });
        },
  colour:genderselected == Gender.Female?KActiveCardColor:KInactiveCardColor,
  cardchild: cardcontent(
  icon: FontAwesomeIcons.venus, label: 'FEMALE',),
  )),
  ],
  ),
  ),
  Expanded(child: ReusableCard(
  colour: KActiveCardColor,
    cardchild: Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Text('HEIGHT',style:KLabelTextStyle ,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(height.toString(),
            style:Knumberstyle
            ),
            Text('cm',
            style: KLabelTextStyle,)
          ],
        ),
       SliderTheme(
         data: SliderTheme.of(context).copyWith(
           thumbShape:
             RoundSliderThumbShape(enabledThumbRadius: 10.0),
           thumbColor: Color(0xFFEB1555),
           activeTrackColor: Colors.white,
           inactiveTickMarkColor: Color(0xFF8D8E9),
            overlayShape:
         RoundSliderOverlayShape(overlayRadius: 20.0),
           overlayColor: Color(0x29EB1555)

         ),
         child: Slider(value: height.toDouble(),
             min: 120.0,
             max: 220.0,

             onChanged: (double newValue){
           setState(() {
             height= newValue.round();
           });

             },
         ),
       )
      ],
    ),

  )),
  Expanded(
  child: Row(
  children: <Widget>[
  Expanded(child: ReusableCard(
  colour: KActiveCardColor,
    cardchild: Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: <Widget>[
        Text('WEIGHT',style: KLabelTextStyle,),
        Text(weight.toString(),style: Knumberstyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: Color(0xFF4C4F5E),
                child: Icon(FontAwesomeIcons.minus,color: Colors.white,),
              onPressed: (){
                setState(() {
                  weight--;
                });

              },
            ),
          SizedBox(width: 10.0,),
            FloatingActionButton(
                backgroundColor: Color(0xFF4C4F5E),
                child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
              onPressed: (){
                 setState(() {
                   weight++;
                 });

              },
            ),

          ],

        )
      ],
    ),
  )),
  Expanded(child: ReusableCard(
  colour: KActiveCardColor,
    cardchild: Column(
      mainAxisAlignment:MainAxisAlignment.center ,
      children: <Widget>[
        Text('AGE',style: KLabelTextStyle,),
        Text(age.toString(),style: Knumberstyle,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(

              backgroundColor: Color(0xFF4C4F5E),
              child: Icon(FontAwesomeIcons.minus,color: Colors.white,),
              onPressed: (){
                setState(() {
                  age--;
                });

              },
            ),
            SizedBox(width: 10.0,),
            FloatingActionButton(
    heroTag: null,
              backgroundColor: Color(0xFF4C4F5E),
              child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
              onPressed: (){
                setState(() {
                  age++;
                });

              },
            ),

          ],

        )
      ],
    ),
  )),
  ],
  ),
  ),
  bottombutton(title: 'CALCULATE',ontap: (){
   CalculateBrain clc= CalculateBrain(weight: weight,height: height);

    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
     BMIresult: clc.CalculateBMI(),
      Bmitext: clc.Getresult(),
      bmiinterprtion: clc.getinterpretion(),

    )));
    },),

  ],
  )

  );
  }
  }


