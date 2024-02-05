enum HealthTextData {
  age('Age'),
  heightFeet('Feet'),
  heightInches('Inches'),
  heightCM('Height in cm'),
  weightInPounds('Weight in pounds'),
  weightInKg('Weight in kg'),

  neckInCM('Neck size in cm'),
  neckInches('Neck size in inches'),
  neckFeet('Neck size in feet'),

  waistInCM('Waist size in cm'),
  waistInches('Waist size in inches'),
  waistFeet('Waist size in feet');

  const HealthTextData(this.name);
  final String name;
}
