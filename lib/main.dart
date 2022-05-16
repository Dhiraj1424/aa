import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

import 'calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(

        scaffoldBackgroundColor: const Color(0xFF0A0E21)
      ),
      
      home: const InputPage(title: 'BMI calculator'),
      routes: {
        
        'routepage':(context)=>ResultPage(
          bmiResult: CalculatorBrain().calculateBmi(),
          interp: CalculatorBrain().getInter(),
          resultText: CalculatorBrain().getResult(),
        )
      },
    );
  }
}

