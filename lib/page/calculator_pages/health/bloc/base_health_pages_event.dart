part of 'base_health_pages_bloc.dart';

@freezed
class BaseHealthPagesEvent with _$BaseHealthPagesEvent {
  const factory BaseHealthPagesEvent.bodyMassIndexBlocStarted(
      HealthCalculator calculator) = StartedBaseHealthPagesBlocStarted;
  const factory BaseHealthPagesEvent.checkFormStateEvent() =
      CheckFormStateEvent;
  const factory BaseHealthPagesEvent.calculateEvent() = CalculateEvent;
  const factory BaseHealthPagesEvent.toggleGenderEvent() = ToggleGenderEvent;
  const factory BaseHealthPagesEvent.toggleUnitEvent() = ToggleUnitEvent;
}
