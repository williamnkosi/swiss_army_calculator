import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/basal_metabolic_rate_page/info.dart';
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
    try {
      final age = state.formKey.currentState!
          .fields[BasalMetabolicRateTextFieldData.age.name]!.value;
      if (state.unit == Units.imperial) {
        final weight = state.formKey.currentState!
            .fields[BasalMetabolicRateTextFieldData.weightInPounds.name]!.value;
        final heightFeet = state.formKey.currentState!
            .fields[BasalMetabolicRateTextFieldData.heightFeet.name]!.value;
        final heightInches = state.formKey.currentState!
            .fields[BasalMetabolicRateTextFieldData.heightInches.name]!.value;
        final weightInKg = convertPoundsToKg(double.parse(weight));
        final heightInCm = convertFeetAndInchesToCm(
            int.parse(heightFeet), int.parse(heightInches));
        final result = cacluateBMR(
            age: int.parse(age),
            weightInKg: weightInKg,
            heightInCm: heightInCm,
            gender: state.gender);

        emit(state.copyWith(result: result));
      } else {
        final weightInKg = state.formKey.currentState!
            .fields[BasalMetabolicRateTextFieldData.weightInKg.name]!.value;
        final heightInCM = state.formKey.currentState!
            .fields[BasalMetabolicRateTextFieldData.heightCM.name]!.value;

        final result = cacluateBMR(
            weightInKg: double.parse(weightInKg),
            heightInCm: double.parse(heightInCM),
            age: int.parse(age),
            gender: state.gender);
        emit(state.copyWith(result: result));
      }
      final rowData =
          _createTableRowData(state.result, [1.2, 1.375, 1.55, 1.725, 1.9]);
      emit(state.copyWith(rowData: rowData));
    } catch (e) {
      throw Exception('Error in calculating BMR');
    }
  }

  _onToggleGenderEvent(ToggleGenderEvent event, emit) {
    _resetFormState(emit);
    if (state.gender == Gender.male) {
      emit(state.copyWith(gender: Gender.female));
    } else {
      emit(state.copyWith(gender: Gender.male));
    }
  }

  _onToggleUnitEvent(
      ToggleUnitEvent event, Emitter<BasalMetabolicRatePageState> emit) {
    _resetFormState(emit);
    if (state.unit == Units.imperial) {
      emit(state.copyWith(unit: Units.metric));
    } else {
      emit(state.copyWith(unit: Units.imperial));
    }
  }

  List<List<String>> _createTableRowData(
      double bmr, List<double> listOfMultipliers) {
    List<List<String>> rowData = [];
    try {
      for (int i = 0; i < activity_level.length; i++) {
        rowData.add([
          activity_level[i],
          (bmr * listOfMultipliers[i]).toStringAsFixed(2)
        ]);
      }
    } catch (e) {
      throw Exception('Error in creating table row data');
    }

    return rowData;
  }

  _resetFormState(Emitter<BasalMetabolicRatePageState> emit) {
    try {
      state.formKey.currentState!.reset();
      emit(state.copyWith(
          result: 0, isDiabled: true, rowData: [], formKey: state.formKey));
    } catch (e) {
      throw Exception('Error in resetting form state');
    }
  }
}
