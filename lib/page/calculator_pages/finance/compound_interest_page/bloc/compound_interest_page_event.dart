part of 'compound_interest_page_bloc.dart';

@freezed
class CompoundInterestPageEvent with _$CompoundInterestPageEvent {
  const factory CompoundInterestPageEvent.checkFormState() =
      _CheckFormStateEvent;
  const factory CompoundInterestPageEvent.calculateCompoundInterest() =
      _CalculateCompoundInterest;
}
