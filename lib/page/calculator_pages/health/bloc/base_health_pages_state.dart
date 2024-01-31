part of 'base_health_pages_bloc.dart';

@freezed
class BaseHealthPagesState with _$BaseHealthPagesState {
  const factory BaseHealthPagesState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
    @Default([]) List<List<String>> rowData,
    @Default(Gender.male) Gender gender,
    @Default(Units.imperial) Units unit,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _BaseHealthPagesState;
}
