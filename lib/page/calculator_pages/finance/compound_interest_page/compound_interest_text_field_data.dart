enum CompoundInterestTextFieldData {
  initialInvestment('initialInvestment', 'Initial Investment'),
  annualContribution('annualContribution', 'Annual Contribution'),
  monthlyContribution('monthlyContribution', 'Monthly Contribution'),
  interestRate('interestRate', 'Interest Rate'),
  compounded('compounded', 'Compouneded'),
  inflationRate('inflationRate', 'Inflation Rate');

  const CompoundInterestTextFieldData(this.name, this.label);

  final String name;
  final String label;
}
