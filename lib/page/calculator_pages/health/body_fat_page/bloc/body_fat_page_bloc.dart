import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';

part 'body_fat_page_event.dart';
part 'body_fat_page_state.dart';
part 'body_fat_page_bloc.freezed.dart';

class BodyFatPageBloc extends Bloc<BodyFatPageEvent, BodyFatPageState> {
  BodyFatPageBloc(HealthCalculator calculator)
      : super(BodyFatPageState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<BodyFatPageBlocStarted>(_onBodyFatPageBlocStarted);
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculaBMREvent>(_onCalculateBMREvent);
    on<ToggleGenderEvent>(_onToggleGenderEvent);
    on<ToggleUnitEvent>(_onToggleUnitEvent);
  }
  _onBodyFatPageBlocStarted(
      BodyFatPageBlocStarted event, Emitter<BodyFatPageState> emit) {
    emit(state.copyWith(calculatorData: event.calculator));
  }

  _onCheckFormStateEvent(
      CheckFormStateEvent event, Emitter<BodyFatPageState> emit) {}

  _onCalculateBMREvent(event, emit) {}

  _onToggleGenderEvent(event, emit) {}

  _onToggleUnitEvent(event, emit) {}
}
