part of 'calorie_page_bloc.dart';

@freezed
class CaloriePageEvent with _$CaloriePageEvent {
  const factory CaloriePageEvent.bodyMassIndexBlocStarted(
      HealthCalculator calculator) = BasalMetabolicRateBlocStarted;
  const factory CaloriePageEvent.checkFormStateEvent() = CheckFormStateEvent;
  const factory CaloriePageEvent.calculateBMREvent() = CalculaBMREvent;
  const factory CaloriePageEvent.toggleGenderEvent() = ToggleGenderEvent;
  const factory CaloriePageEvent.toggleUnitEvent() = ToggleUnitEvent;
}
