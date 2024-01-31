part of 'basal_metabolic_rate_page_bloc.dart';

@freezed
class BasalMetabolicRatePageEvent with _$BasalMetabolicRatePageEvent {
  const factory BasalMetabolicRatePageEvent.bodyMassIndexBlocStarted(
      HealthCalculator calculator) = BasalMetabolicRateBlocStarted;
  const factory BasalMetabolicRatePageEvent.checkFormStateEvent() =
      CheckFormStateEvent;
  const factory BasalMetabolicRatePageEvent.calculateBMREvent() =
      CalculaBMREvent;
  const factory BasalMetabolicRatePageEvent.toggleGenderEvent() =
      ToggleGenderEvent;
  const factory BasalMetabolicRatePageEvent.toggleUnitEvent() = ToggleUnitEvent;
}
