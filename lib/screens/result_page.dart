import 'package:bmi_calculator/color/constans.dart';
import 'package:bmi_calculator/componets/reusable_container.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({ Key? key, required this.bmiResult,required this.resultText,required this.interp }) : super(key: key);

  final bmiResult;
  final resultText;
  final interp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            child: Text('Result',style: kTitleStyle,),
          )),
          Expanded(
            flex: 5,
            child: ReusableContainer(cardColor: kactiveCardColor,
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(resultText,style: kResultTextStyle,),
                Text(bmiResult,style: KBMItext,),
              
                Text(resultText,style: klabelTextStyle,),
                ReusableButton(onTap: (){
                  Navigator.pop(context);
                },
                text: 'Re calculate',),
              ],
            ),
            ),
            
            
            )
        ],
      )
    );
  }
}