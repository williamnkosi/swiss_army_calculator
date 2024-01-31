part of 'calorie_page_bloc.dart';

@freezed
class CaloriePageState with _$CaloriePageState {
  const factory CaloriePageState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
    @Default([]) List<List<String>> rowData,
    @Default(Gender.male) Gender gender,
    @Default(Units.imperial) Units unit,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _CaloriePageState;
}
