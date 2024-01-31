import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';

part 'basal_metabolic_rate_page_event.dart';
part 'basal_metabolic_rate_page_state.dart';
part 'basal_metabolic_rate_page_bloc.freezed.dart';

class BasalMetabolicRatePageBloc
    extends Bloc<BasalMetabolicRatePageEvent, BasalMetabolicRatePageState> {
  BasalMetabolicRatePageBloc(HealthCalculator calculator)
      : super(BasalMetabolicRatePageState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<BasalMetabolicRateBlocStarted>(_onBasalMetabolicRateBlocStarted);
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculaBMREvent>(_onCalculateBMREvent);
    on<ToggleGenderEvent>(_onToggleGenderEvent);
    on<ToggleUnitEvent>(_onToggleUnitEvent);
  }

  _onBasalMetabolicRateBlocStarted(BasalMetabolicRateBlocStarted event,
      Emitter<BasalMetabolicRatePageState> emit) {
    emit(state.copyWith(calculatorData: event.calculator));
  }

  _onCheckFormStateEvent(
      CheckFormStateEvent event, Emitter<BasalMetabolicRatePageState> emit) {
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

  _onCalculateBMREvent(event, emit) {}

  _onToggleGenderEvent(ToggleGenderEvent event, emit) {
    if (state.gender == Gender.male) {
      emit(state.copyWith(gender: Gender.female));
    } else {
      emit(state.copyWith(gender: Gender.male));
    }
  }

  _onToggleUnitEvent(
      ToggleUnitEvent event, Emitter<BasalMetabolicRatePageState> emit) {
    if (state.unit == Units.imperial) {
      emit(state.copyWith(unit: Units.metric));
    } else {
      emit(state.copyWith(unit: Units.imperial));
    }
  }
}
