import 'dart:math';

class CalculationPage {
  final int height;
  final int weight;
  double _bmi;

  CalculationPage({
    this.height,
    this.weight,
  });

  String calculateBMI() {
    _bmi = this.weight / pow(this.height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return 'Overweight';
    if (_bmi > 18.5)
      return 'Normal';
    return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have a higher body weight than Normal. Try to exercise more.';
    if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    return 'You have a lower body weight than Normal. You can eat a bit more.';
  }

}
