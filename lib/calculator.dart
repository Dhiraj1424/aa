import 'dart:math';
 class CalculatorBrain {
final int? height;
 final int? weight;
  CalculatorBrain({
      this.height,
      this.weight,
  });
 late double _bmi;
   String calculateBmi(){
    _bmi=weight!/pow(height!/10,2);
    return _bmi.toStringAsFixed(1);
  }
  

  String getResult(){
    if(_bmi>=25){
      return 'over weight';
    }
    if(_bmi>15){
      return 'underweight';
    }
    else{
      return 'normal weight';
    }
  }

   String getInter(){
    if(_bmi>=25){
      return 'you are over weight';
    }
    if(_bmi>15){
      return 'you are underweight';
    }
    else{
      return 'you are normal weight';
    }
  }


  
}
