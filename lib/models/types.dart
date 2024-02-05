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
