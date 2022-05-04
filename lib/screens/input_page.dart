import 'package:bmi_calculator/color/constans.dart';
import 'package:bmi_calculator/componets/icon_content.dart';
import 'package:bmi_calculator/componets/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactivateCardColor;
  // Color femaleCardColor = inactivateCardColor;

// void updateColour(Gender selectedGender){
//   if(selectedGender ==Gender.male){
//     if(maleCardColor == inactivateCardColor){
//     maleCardColor=activeCardColor;
//     femaleCardColor=inactivateCardColor;
//   }
//   else{
//     maleCardColor=inactivateCardColor;
//   }
//   }
//  if(selectedGender ==Gender.female){
//     if(femaleCardColor==inactivateCardColor){
//     femaleCardColor=activeCardColor;
//     maleCardColor=inactivateCardColor;
//   }
//   else{
//     femaleCardColor=inactivateCardColor;
//   }
//   }
// }

  Gender? selectedGender;
  int height = 180;
  int weight = 0;
  int age=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableContainer(
                  ontap: () {
                    selectedGender = Gender.male;
                  },
                  cardColor: selectedGender == Gender.male
                      ? kactiveCardColor
                      : kinactivateCardColor,
                  cardWidget: const IconContent(
                    icon: FontAwesomeIcons.mars,
                    iconText: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableContainer(
                  ontap: () {
                    selectedGender = Gender.female;
                  },
                  cardColor: selectedGender == Gender.female
                      ? kactiveCardColor
                      : kinactivateCardColor,
                  cardWidget: const IconContent(
                    icon: FontAwesomeIcons.venus,
                    iconText: 'FEMALE',
                  ),
                )),
              ],
            )),
            Expanded(
                child: ReusableContainer(
              cardColor: kactiveCardColor,
              cardWidget: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(height.toString(), style: knumberTextStyle),
                      Text(
                        'cm',
                        style: klabelTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0xFFEB1555),
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        // activeColor: Color(0xFFEB1555),

                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableContainer(
                  cardColor: kactiveCardColor,
                  cardWidget: Column(
                    children: [
                      const Text(
                        'weight',
                        style: klabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: knumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressedd: () {
                                setState(() {
                                  weight++;
                                  print('aa');
                                });
                              }),
                          SizedBox(width: 10),
                          RoundIconButton(
                            onPressedd: () {
                              weight--;
                            },
                            icon: FontAwesomeIcons.minus,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableContainer(
                  cardColor: kactiveCardColor,
                  cardWidget: Column(
                    children: [
                      Text('AGE',
                      style: klabelTextStyle,
                      ),
                      Text(
age.toString(),style:knumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.plus,
                          onPressedd: (){
                            setState(() {
                              age--;
                            });
                          },
                          ),
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                          onPressedd: (){
                            setState(() {
                              age--;
                            });
                          },
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            )),
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.icon, this.onPressedd})
      : super(key: key);
  final IconData icon;
  final void Function()? onPressedd;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPressedd,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
