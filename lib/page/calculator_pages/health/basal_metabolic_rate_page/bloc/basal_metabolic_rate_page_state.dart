part of 'basal_metabolic_rate_page_bloc.dart';

@freezed
class BasalMetabolicRatePageState with _$BasalMetabolicRatePageState {
  const factory BasalMetabolicRatePageState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
    @Default(Units.imperial) Units unit,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _BasalMetabolicRatePageState;
}
