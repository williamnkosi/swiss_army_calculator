import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/utils/functions.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';
import '../basal_metabolic_rate_field_names.dart';

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

  _onCalculateBMREvent(event, emit) {
    final age = state.formKey.currentState!
        .fields[BasalMetabolicRateTextFieldData.age.name]!.value;
    final weight = state.formKey.currentState!
        .fields[BasalMetabolicRateTextFieldData.weight.name]!.value;
    final heightFeet = state.formKey.currentState!
        .fields[BasalMetabolicRateTextFieldData.heightFeet.name]!.value;
    final heightInches = state.formKey.currentState!
        .fields[BasalMetabolicRateTextFieldData.heightInches.name]!.value;

    if (state.unit == Units.imperial) {
      final weightInKg = poundsToKg(double.parse(weight));
      final heightInCm =
          feetAndInchesToCm(int.parse(heightFeet), int.parse(heightInches));
      final result = cacluateBMR(
          age: int.parse(age),
          weightInKg: weightInKg,
          heightInCm: heightInCm,
          gender: state.gender);
      emit(state.copyWith(result: result));
    } else {
      final heightInCM = state.formKey.currentState!
          .fields[BasalMetabolicRateTextFieldData.heightInches.name]!.value;

      final result = cacluateBMR(
          weightInKg: weight,
          heightInCm: heightInCM,
          age: age,
          gender: state.gender);
      emit(state.copyWith(result: result));
    }
  }

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
