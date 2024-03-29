part of 'compound_interest_page_bloc.dart';

@freezed
class CompoundInterestPageState with _$CompoundInterestPageState {
  const factory CompoundInterestPageState({
    required FinancialCalculator calculator,
    required GlobalKey<FormBuilderState> formKey,
    @Default(0) double totalAmount,
    @Default(true) bool isDiabled,
    @Default(0) double initialInvestment,
    @Default(0) double annualContribution,
    @Default(0) double monthlyContribution,
    @Default(0) double interestRate,
    @Default(0) int investmentLengthYears,
    @Default(0) int investmentLengthMonths,
    @Default(0) double inflationRate,
  }) = _CompoundInterestPageState;
}
