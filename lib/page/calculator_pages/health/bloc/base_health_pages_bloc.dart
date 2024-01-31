import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/calculators.dart';
import '../../../../models/types.dart';

part 'base_health_pages_event.dart';
part 'base_health_pages_state.dart';
part 'base_health_pages_bloc.freezed.dart';

class BaseHealthPagesBloc
    extends Bloc<BaseHealthPagesEvent, BaseHealthPagesState> {
  BaseHealthPagesBloc(HealthCalculator calculator)
      : super(BaseHealthPagesState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<StartedBaseHealthPagesBlocStarted>(_onStartedBaseHealthPagesBlocStarted);
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculateEvent>(_onCalculateEvent);
    on<ToggleGenderEvent>(_onToggleGenderEvent);
    on<ToggleUnitEvent>(_onToggleUnitEvent);
  }

  _onStartedBaseHealthPagesBlocStarted(StartedBaseHealthPagesBlocStarted event,
      Emitter<BaseHealthPagesState> emit) {
    emit(state.copyWith(calculatorData: event.calculator));
  }

  _onCheckFormStateEvent(
      CheckFormStateEvent event, Emitter<BaseHealthPagesState> emit) {
    if (state.formKey.currentState!.isValid) {
      try {
        if (state.formKey.currentState!.validate()) {
          state.formKey.currentState?.save();

          emit(state.copyWith(isDiabled: false));
        } else {
          emit(state.copyWith(isDiabled: true));
        }
      } catch (e) {
        emit(state.copyWith(isDiabled: true));
      }
    }
  }

  _onCalculateEvent(CalculateEvent event, Emitter<BaseHealthPagesState> emit) {}
  _onToggleGenderEvent(
      ToggleGenderEvent event, Emitter<BaseHealthPagesState> emit) {
    _resetFormState(emit);
    if (state.gender == Gender.male) {
      emit(state.copyWith(gender: Gender.female));
    } else {
      emit(state.copyWith(gender: Gender.male));
    }
  }

  _onToggleUnitEvent(
      ToggleUnitEvent event, Emitter<BaseHealthPagesState> emit) {
    _resetFormState(emit);
    if (state.unit == Units.imperial) {
      emit(state.copyWith(unit: Units.metric));
    } else {
      emit(state.copyWith(unit: Units.imperial));
    }
  }

  _resetFormState(Emitter<BaseHealthPagesState> emit) {
    try {
      state.formKey.currentState!.reset();
      emit(state.copyWith(
          result: 0, isDiabled: true, rowData: [], formKey: state.formKey));
    } catch (e) {
      throw Exception('Error in resetting form state');
    }
  }
}
