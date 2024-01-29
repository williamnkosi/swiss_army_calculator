part of 'body_mass_index_bloc.dart';

enum Units {
  metric,
  imperial,
}

@freezed
class BodyMassIndexState with _$BodyMassIndexState {
  const factory BodyMassIndexState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
    @Default(Units.imperial) Units unit,
    @Default(0) double result,
    @Default(true) bool isDiabled,
  }) = _BodyMassIndexState;
}
