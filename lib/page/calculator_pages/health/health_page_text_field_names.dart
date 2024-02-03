enum BaseHealthPagesTextFieldData {
  age('Age'),
  heightFeet('Feet'),
  heightInches('Inches'),
  heightCM('Height in cm'),
  weightInPounds('Weight in pounds'),
  weightInKg('Weight in kg');

  const BaseHealthPagesTextFieldData(this.name);
  final String name;
}
