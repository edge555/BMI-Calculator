import 'dart:math';
class CalculationPart{
  CalculationPart({required this.height,required this.weight,bmi});
  final int height;
  final int weight;
  late double bmi;
  String calculateBMI(){
    bmi = weight/pow(height/100,2);
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(bmi>30){
      return 'OBESE';
    } else if(bmi>=25){
      return 'OVERWEIGHT';
    } else if(bmi>=18.5){
      return 'NORMAL';
    } else{
      return 'UNDERWEIGHT';
    }
  }
}