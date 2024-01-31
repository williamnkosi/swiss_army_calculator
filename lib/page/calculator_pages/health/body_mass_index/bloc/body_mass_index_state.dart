part of 'body_mass_index_bloc.dart';

@freezed
class BodyMassIndexState with _$BodyMassIndexState {
  const factory BodyMassIndexState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
    @Default(Gender.male) Gender gender,
    @Default(Units.imperial) Units unit,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _BodyMassIndexState;
}
