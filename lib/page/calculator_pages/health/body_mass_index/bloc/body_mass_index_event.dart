part of 'body_mass_index_bloc.dart';

@freezed
class BodyMassIndexEvent with _$BodyMassIndexEvent {
  const factory BodyMassIndexEvent.bodyMassIndexBlocStarted(
      HealthCalculator calculator) = BodyMassIndexBlocStarted;
}