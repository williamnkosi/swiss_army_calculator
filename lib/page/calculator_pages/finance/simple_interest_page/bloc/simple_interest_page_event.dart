import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'simple_interest_page_event.freezed.dart';

@freezed
abstract class SimpleInterestPageEvent with _$SimpleInterestPageEvent {
  const factory SimpleInterestPageEvent.checkFormStateEvent(
      {required GlobalKey<FormBuilderState> formKey}) = CheckFormStateEvent;
  const factory SimpleInterestPageEvent.calculateResultEvent(
      {required double principle,
      required double rate,
      required double duration}) = CalculateResultEvent;
  const factory SimpleInterestPageEvent.toggleInfoEvent() = ToggleInfoEvent;
}
