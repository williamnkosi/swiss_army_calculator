import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';

part 'ideal_weight_page_event.dart';
part 'ideal_weight_page_state.dart';
part 'ideal_weight_page_bloc.freezed.dart';

class IdealWeightPageBloc
    extends Bloc<IdealWeightPageEvent, IdealWeightPageState> {
  IdealWeightPageBloc(HealthCalculator calculator)
      : super(IdealWeightPageState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<IdealWeightBlocStarted>(_onIdealWeightIndexBlocStarted);
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculateIdealWeightEvent>(_onCalculateIdealWeightEvent);
    on<ToggleUnitEvent>(_onToggleUnitEvent);
    on<ToggleGenderEvent>(_onToggleGenderEvent);
  }

  _onIdealWeightIndexBlocStarted(
      IdealWeightBlocStarted event, Emitter<IdealWeightPageState> emit) {
    emit(state.copyWith(calculatorData: event.calculator));
  }

  _onCheckFormStateEvent(
      CheckFormStateEvent event, Emitter<IdealWeightPageState> emit) {
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

  _onCalculateIdealWeightEvent(
      CalculateIdealWeightEvent event, Emitter<IdealWeightPageState> emit) {}

  _onToggleUnitEvent(
      ToggleUnitEvent event, Emitter<IdealWeightPageState> emit) {
    _resetFormState(emit);
    if (state.unit == Units.imperial) {
      emit(state.copyWith(unit: Units.metric));
    } else {
      emit(state.copyWith(unit: Units.imperial));
    }
  }

  _onToggleGenderEvent(
      ToggleGenderEvent event, Emitter<IdealWeightPageState> emit) {
    _resetFormState(emit);
    if (state.gender == Gender.male) {
      emit(state.copyWith(gender: Gender.female));
    } else {
      emit(state.copyWith(gender: Gender.male));
    }
  }

  _resetFormState(Emitter<IdealWeightPageState> emit) {
    try {
      state.formKey.currentState!.reset();
      emit(state.copyWith(result: 0, isDiabled: true, formKey: state.formKey));
    } catch (e) {
      throw Exception('Error in resetting form state');
    }
  }
}
