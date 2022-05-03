import 'package:bmi_calculator/componets/icon_content.dart';
import 'package:bmi_calculator/componets/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
const myColor=Color(0xFF1D1E33);
const activeCardColor=Color(0xFF1D1E33);
  const inactivateCardColor=Color(0xFF111328);


enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.title}) : super(key: key);

  final String title;
  
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
Color maleCardColor=inactivateCardColor;
Color femaleCardColor=inactivateCardColor;


void updateColour(Gender selectedGender){
  if(selectedGender ==Gender.male){
    if(maleCardColor == inactivateCardColor){
    maleCardColor=activeCardColor;
    femaleCardColor=inactivateCardColor;
  }
  else{
    maleCardColor=inactivateCardColor;
  }
  }
 if(selectedGender ==Gender.female){
    if(femaleCardColor==inactivateCardColor){
    femaleCardColor=activeCardColor;
    maleCardColor=inactivateCardColor;
  }
  else{
    femaleCardColor=inactivateCardColor;
  }
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                   child: GestureDetector(
                      onTap: () {
          setState(() {
            updateColour(Gender.male);
            print('1 is print');
          });
        },
                     child: ReusableContainer(
                       cardColor:maleCardColor ,
                       cardWidget: IconContent(
                         icon: FontAwesomeIcons.mars,
                         iconText: 'MALE',
                       ),
                     ),
                   )),
                Expanded(child: GestureDetector(
                   onTap: () {
          setState(() {
            updateColour(Gender.female);
            print('1 is print');
          });
        },
                  child: ReusableContainer(
                    cardColor: femaleCardColor,
                    cardWidget: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconText: 'FEMALE',
                    ),
                  ),
                )),
              ],
            )),
            Expanded(child: ReusableContainer(
              cardColor: activeCardColor
            )),
           
               Expanded(
                child: Row(
              children: [
                Expanded(
                  
                    child: ReusableContainer(
                      cardColor: activeCardColor
                    )),
                Expanded(child: ReusableContainer(cardColor: activeCardColor,)),
              ],
            )), 
          ],
        ));
  }
}

