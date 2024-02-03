part of 'calorie_page_bloc.dart';

@freezed
class CaloriePageEvent with _$CaloriePageEvent {
  const factory CaloriePageEvent.caloriePageBlocStarted(
      HealthCalculator calculator) = CaloriePageBlocStarted;
  const factory CaloriePageEvent.checkFormStateEvent() = CheckFormStateEvent;
  const factory CaloriePageEvent.calculateCaloriesEvent() =
      CalculateCaloriesEvent;
  const factory CaloriePageEvent.toggleGenderEvent() = ToggleGenderEvent;
  const factory CaloriePageEvent.toggleUnitEvent() = ToggleUnitEvent;
}
