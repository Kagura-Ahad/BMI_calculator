import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final height;
  final weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 25 && _bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretations() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more and eat healthy to stay healthy';
    } else if (_bmi < 25 && _bmi > 18.5) {
      return 'You have normal body weight. Amazing!';
    } else {
      return 'You have a lower than normal body weight. You should eat more inorder to improve health';
    }
  }
}
