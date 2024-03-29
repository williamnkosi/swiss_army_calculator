part of 'body_fat_page_bloc.dart';

@freezed
class BodyFatPageEvent with _$BodyFatPageEvent {
  const factory BodyFatPageEvent.bodyMassIndexBlocStarted(
      HealthCalculator calculator) = BodyFatPageBlocStarted;
  const factory BodyFatPageEvent.checkFormStateEvent() = CheckFormStateEvent;
  const factory BodyFatPageEvent.calculateBodyFatEvent() = CalculaBodyFatEvent;
  const factory BodyFatPageEvent.toggleGenderEvent() = ToggleGenderEvent;
  const factory BodyFatPageEvent.toggleUnitEvent() = ToggleUnitEvent;
  const factory BodyFatPageEvent.toggleFormulaMethodEvent() =
      ToggleFormulaMethodEvent;
}
