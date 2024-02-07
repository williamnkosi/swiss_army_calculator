enum CalculatorTypes {
  finance('Finance'),
  mathematics('Mathematics'),
  unitConversion('Unit Conversion'),
  dateTime('DateTime'),
  health('Health');

  const CalculatorTypes(this.value);
  final String value;
}

enum CalculatorsDefinedTypes {
  //Financial Calculators
  simpleInterest,
  compoundInterest,
  annuity,
  salary,
  income,
  calculator401k,
  loan,

  //Math Calculators
  percentage,
  randomNumber,
  triangle,

  //Date & Time Calculators
  age,
  time,
  date,

  //Health Calculators
  bmi,
  bmr,
  calorie,
  bodyFat,
  idealWeight,
}
