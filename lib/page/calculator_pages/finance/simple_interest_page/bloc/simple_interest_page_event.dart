import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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
