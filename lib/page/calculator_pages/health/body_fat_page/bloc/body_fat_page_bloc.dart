import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/utils/functions.dart';
import 'package:swiss_army_calculator/utils/health_formulas.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';
import '../../health_page_text_field_names.dart';

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
    on<CalculaBodyFatEvent>(_onCalculateBodyFatEvent);
    on<ToggleGenderEvent>(_onToggleGenderEvent);
    on<ToggleUnitEvent>(_onToggleUnitEvent);
    on<ToggleFormulaMethodEvent>(_onToggleFormulaMethodEvent);
  }
  _onBodyFatPageBlocStarted(
      BodyFatPageBlocStarted event, Emitter<BodyFatPageState> emit) {
    emit(state.copyWith(calculatorData: event.calculator));
  }

  _onCheckFormStateEvent(
      CheckFormStateEvent event, Emitter<BodyFatPageState> emit) {
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

  _onCalculateBodyFatEvent(
      CalculaBodyFatEvent event, Emitter<BodyFatPageState> emit) {
    try {
      if (state.unit == Units.imperial) {
        Map<String, dynamic> formData = state.formKey.currentState?.value ?? {};
        int neckFeet = int.parse(formData[HealthTextData.neckFeet.name]);
        int neckInches = int.parse(formData[HealthTextData.neckInches.name]);
        int waistFeet = int.parse(formData[HealthTextData.waistFeet.name]);
        int waistInches = int.parse(formData[HealthTextData.waistInches.name]);
        int heightFeet = int.parse(formData[HealthTextData.heightFeet.name]);
        int heightInches =
            int.parse(formData[HealthTextData.heightInches.name]);

        final bodyFatPercentage = calculateNavyMethodMetric(
            neckCircumferenceInCM: feetAndInchesToCm(neckFeet, neckInches),
            waistCircumferenceInCM: feetAndInchesToCm(waistFeet, waistInches),
            heightInCM: feetAndInchesToCm(heightFeet, heightInches));
        emit(state.copyWith(result: bodyFatPercentage));
      } else {
        Map<String, dynamic> formData = state.formKey.currentState?.value ?? {};

        double neckInCM = double.parse(formData[HealthTextData.neckInCM.name]);
        double waistInCM =
            double.parse(formData[HealthTextData.waistInCM.name]);
        double heightCM = double.parse(formData[HealthTextData.heightCM.name]);
        final bodyFatPercentage = calculateNavyMethodMetric(
            neckCircumferenceInCM: neckInCM,
            waistCircumferenceInCM: waistInCM,
            heightInCM: heightCM);
        emit(state.copyWith(result: bodyFatPercentage));
      }
    } catch (e) {
      throw Exception('Error in calculating body fat');
    }
  }

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

  _onToggleFormulaMethodEvent(
      ToggleFormulaMethodEvent event, Emitter<BodyFatPageState> emit) {
    _resetFormState(emit);
    if (state.navyVsBmiMethod == NavyVsBmiMethod.navy) {
      emit(state.copyWith(navyVsBmiMethod: NavyVsBmiMethod.bmi));
    } else {
      emit(state.copyWith(navyVsBmiMethod: NavyVsBmiMethod.navy));
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
