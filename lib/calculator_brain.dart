import 'dart:math';
class CalculateBrain{
  CalculateBrain({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;

  String CalculateBMI(){
    _bmi= weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String Getresult(){
    if(_bmi >= 25) {
      return'over weight';

    }else if (_bmi > 18.5){
      return'normal';
    }else {
      return'under weight';
    }
    }
  String getinterpretion(){
    if(_bmi >= 25) {
      return'you have higher than normal body weight,try to exercise more ';

    }else if (_bmi >= 18.5){
      return'you have normal body weight , Good';
    }else {
      return'you have lower than normal body weight,you can eat a bit more';
    }
  }
  }


