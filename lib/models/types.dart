enum Units {
  metric('Metric'),
  imperial('Imperial');

  const Units(this.value);
  final String value;
}

enum Gender {
  male('Male'),
  female('Female');

  const Gender(this.value);
  final String value;
}

enum NavyVsBmiMethod {
  navy('Navy Method'),
  bmi('BMI Method');

  const NavyVsBmiMethod(this.value);
  final String value;
}

enum BmiCategory {
  underweight('Underweight', 0, 18.5),
  normal('Normal', 18.5, 24.9),
  overweight('Overweight', 25, 29.9),
  obese('Obese', 30, 100);

  const BmiCategory(this.value, this.lowerLimit, this.upperLimit);
  final String value;
  final double lowerLimit;
  final double upperLimit;
}
