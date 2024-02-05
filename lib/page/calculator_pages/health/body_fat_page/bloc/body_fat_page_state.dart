part of 'body_fat_page_bloc.dart';

@freezed
class BodyFatPageState with _$BodyFatPageState {
  const factory BodyFatPageState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
    @Default([]) List<List<String>> rowData,
    @Default(NavyVsBmiMethod.navy) NavyVsBmiMethod navyVsBmiMethod,
    @Default(Gender.male) Gender gender,
    @Default(Units.imperial) Units unit,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _BodyFatPageState;
}
