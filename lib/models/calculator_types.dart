enum CalculatorTypes {
  finance('Finance'),
  mathematics('Mathematics'),
  unitConversion('Unit Conversion'),
  dateTime('Date & Time'),
  health('Health');

  const CalculatorTypes(this.value);
  final String value;
}

enum FinanceCalculators {
  simpleInterest('Simple Interest'),
  compoundInterest('Compound Interest'),
  calculator401k('401k'),
  loan('Loan');

  const FinanceCalculators(this.value);
  final String value;
}
