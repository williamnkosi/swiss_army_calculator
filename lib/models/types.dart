enum Units {
  metric,
  imperial,
}

enum Gender {
  male('Male'),
  female('Female');

  const Gender(this.value);
  final String value;
}
