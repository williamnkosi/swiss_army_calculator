import 'package:freezed_annotation/freezed_annotation.dart';
part 'simple_interest_page_event.freezed.dart';

@freezed
abstract class SimpleInterestPageEvent with _$SimpleInterestPageEvent {
  const factory SimpleInterestPageEvent.toggleDisabledButton() =
      ToggleDisabledButton;
  const factory SimpleInterestPageEvent.toggleInfo() = ToggleInfo;
}
