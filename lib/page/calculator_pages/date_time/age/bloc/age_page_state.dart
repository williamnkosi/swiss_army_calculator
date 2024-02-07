part of 'age_page_bloc.dart';

@freezed
class AgePageState with _$AgePageState {
  const factory AgePageState({
    required GlobalKey<FormBuilderState> formKey,
    required DateAndTimeCalculator calculatorData,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _AgePageState;
}
