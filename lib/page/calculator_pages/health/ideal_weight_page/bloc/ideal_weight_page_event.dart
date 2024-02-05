part of 'ideal_weight_page_bloc.dart';

@freezed
class IdealWeightPageEvent with _$IdealWeightPageEvent {
  const factory IdealWeightPageEvent.idealWeightBlocStarted(
      HealthCalculator calculator) = IdealWeightBlocStarted;
  const factory IdealWeightPageEvent.checkFormStateEvent() =
      CheckFormStateEvent;
  const factory IdealWeightPageEvent.calculateIdealWeightEvent() =
      CalculateIdealWeightEvent;
  const factory IdealWeightPageEvent.toggleUnitEvent() = ToggleUnitEvent;
  const factory IdealWeightPageEvent.toggleGenderEvent() = ToggleGenderEvent;
}
