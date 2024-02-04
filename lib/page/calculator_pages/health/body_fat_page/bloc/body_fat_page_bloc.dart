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

  _onToggleGenderEvent(
      ToggleGenderEvent event, Emitter<BodyFatPageState> emit) {
    _resetFormState(emit);
    if (state.gender == Gender.male) {
      emit(state.copyWith(gender: Gender.female));
    } else {
      emit(state.copyWith(gender: Gender.male));
    }
  }

  _onToggleUnitEvent(ToggleUnitEvent event, Emitter<BodyFatPageState> emit) {
    _resetFormState(emit);
    if (state.unit == Units.imperial) {
      emit(state.copyWith(unit: Units.metric));
    } else {
      emit(state.copyWith(unit: Units.imperial));
    }
  }

  _resetFormState(Emitter<BodyFatPageState> emit) {
    try {
      state.formKey.currentState!.reset();
      emit(state.copyWith(
          result: 0, isDiabled: true, rowData: [], formKey: state.formKey));
    } catch (e) {
      throw Exception('Error in resetting form state');
    }
  }
}
