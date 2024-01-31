enum BasalMetabolicRateTextFieldData {
  age('Age'),
  heightFeet('Feet'),
  heightInches('Inches'),
  heightCM('Height in cm'),
  weightInPounds('Weight in pounds'),
  weightInKg('Weight in kg');

  const BasalMetabolicRateTextFieldData(this.name);
  final String name;
}
