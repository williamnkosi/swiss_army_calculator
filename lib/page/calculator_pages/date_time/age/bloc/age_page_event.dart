part of 'age_page_bloc.dart';

@freezed
class AgePageEvent with _$AgePageEvent {
  const factory AgePageEvent.agePageBlocStarted(
      DateAndTimeCalculator calculator) = AgePageBlocStarted;
  const factory AgePageEvent.checkFormStateEvent() = CheckFormStateEvent;
  const factory AgePageEvent.calculateAgeEvent() = CalculateAgeEvent;
}
