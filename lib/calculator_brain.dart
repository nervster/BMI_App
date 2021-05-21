import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double bmi;

  double calcBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String getResults() {
    bmi = calcBMI();
    if (bmi >= 25.0) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    bmi = calcBMI();
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to eat healthier.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You ahve a lower than normal body weight. You can eat a bit more.';
    }
  }
}
