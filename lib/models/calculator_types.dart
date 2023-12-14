enum CalculatorTypes {
  finance('Finance'),
  mathematics('Mathematics'),
  unitConversion('Unit Conversion'),
  dateTime('Date & Time'),
  health('Health');

  const CalculatorTypes(this.value);
  final String value;
}
