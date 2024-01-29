part of 'body_mass_index_bloc.dart';

@freezed
class BodyMassIndexState with _$BodyMassIndexState {
  const factory BodyMassIndexState({
    required GlobalKey<FormBuilderState> formKey,
    required HealthCalculator calculatorData,
  }) = _BodyMassIndexState;
}
