import 'package:freezed_annotation/freezed_annotation.dart';
part 'simple_interest_page_event.freezed.dart';

@freezed
abstract class SimpleInterestPageEvent with _$SimpleInterestPageEvent {
  const factory SimpleInterestPageEvent.checkFormStateEvent() =
      CheckFormStateEvent;
  const factory SimpleInterestPageEvent.calculateResultEvent() =
      CalculateResultEvent;
  const factory SimpleInterestPageEvent.toggleInfoEvent() = ToggleInfoEvent;
}
