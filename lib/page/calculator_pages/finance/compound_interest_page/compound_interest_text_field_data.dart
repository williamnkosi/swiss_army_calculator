enum CompoundInterestTextFieldData {
  initialInvestment('Initial Investment'),
  annualContribution('Annual Contribution'),
  monthlyContribution('Monthly Contribution'),
  interestRate('Interest Rate'),
  compounded('Compounded'),
  lengthYears('Years'),
  lengthMonths('Months'),
  inflationRate('Inflation Rate');

  const CompoundInterestTextFieldData(this.name);

  final String name;
}
