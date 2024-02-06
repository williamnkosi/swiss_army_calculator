part of 'ideal_weight_page_bloc.dart';

@freezed
class IdealWeightPageState with _$IdealWeightPageState {
  const factory IdealWeightPageState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
    @Default([]) List<List<String>> resultRowData,
    @Default(Gender.male) Gender gender,
    @Default(Units.imperial) Units unit,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _IdealWeightPageState;
}
