import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/basal_metabolic_rate_page/info.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';
import '../../../../../utils/functions.dart';
import '../../health_page_text_field_names.dart';

part 'calorie_page_event.dart';
part 'calorie_page_state.dart';
part 'calorie_page_bloc.freezed.dart';

class CaloriePageBloc extends Bloc<CaloriePageEvent, CaloriePageState> {
  CaloriePageBloc(HealthCalculator calculator)
      : super(CaloriePageState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<CaloriePageBlocStarted>(_onCaloriePageBlocStarted);
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculateCaloriesEvent>(_onCalculateCaloriesEvent);
    on<ToggleGenderEvent>(_onToggleGenderEvent);
    on<ToggleUnitEvent>(_onToggleUnitEvent);
  }

  _onCaloriePageBlocStarted(
      CaloriePageBlocStarted event, Emitter<CaloriePageState> emit) {}

  _onCheckFormStateEvent(
      CheckFormStateEvent event, Emitter<CaloriePageState> emit) {
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

  _onCalculateCaloriesEvent(
      CalculateCaloriesEvent event, Emitter<CaloriePageState> emit) {
    try {
      final age = state.formKey.currentState!
          .fields[BaseHealthPagesTextFieldData.age.name]!.value;
      if (state.unit == Units.imperial) {
        final weight = state.formKey.currentState!
            .fields[BaseHealthPagesTextFieldData.weightInPounds.name]!.value;
        final heightFeet = state.formKey.currentState!
            .fields[BaseHealthPagesTextFieldData.heightFeet.name]!.value;
        final heightInches = state.formKey.currentState!
            .fields[BaseHealthPagesTextFieldData.heightInches.name]!.value;
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
        final weightInKg = state.formKey.currentState!
            .fields[BaseHealthPagesTextFieldData.weightInKg.name]!.value;
        final heightInCM = state.formKey.currentState!
            .fields[BaseHealthPagesTextFieldData.heightCM.name]!.value;

        final result = cacluateBMR(
            weightInKg: double.parse(weightInKg),
            heightInCm: double.parse(heightInCM),
            age: int.parse(age),
            gender: state.gender);
        emit(state.copyWith(result: result));
      }
      final wlData = _createTableRowData(
          rowTitles: weightLossNames,
          bmr: state.result,
          listOfMultipliers: [1.00, 0.9, 0.8, 0.61]);
      final wgData = _createTableRowData(
          rowTitles: weightGainNames,
          bmr: state.result,
          listOfMultipliers: [1.00, 1.10, 1.20, 1.39]);
      emit(
          state.copyWith(weightLossRowData: wlData, weightGainRowData: wgData));
    } catch (e) {
      throw Exception('Error in calculating BMR');
    }
  }

  _onToggleGenderEvent(
      ToggleGenderEvent event, Emitter<CaloriePageState> emit) {
    _resetFormState(emit);
    if (state.unit == Units.imperial) {
      emit(state.copyWith(unit: Units.metric));
    } else {
      emit(state.copyWith(unit: Units.imperial));
    }
  }

  _onToggleUnitEvent(ToggleUnitEvent event, Emitter<CaloriePageState> emit) {
    _resetFormState(emit);
    if (state.gender == Gender.male) {
      emit(state.copyWith(gender: Gender.female));
    } else {
      emit(state.copyWith(gender: Gender.male));
    }
  }

  _resetFormState(Emitter<CaloriePageState> emit) {
    try {
      state.formKey.currentState!.reset();
      emit(state.copyWith(
          result: 0,
          isDiabled: true,
          weightGainRowData: [],
          weightLossRowData: [],
          formKey: state.formKey));
    } catch (e) {
      throw Exception('Error in resetting form state');
    }
  }

  List<List<String>> _createTableRowData(
      {required List<String> rowTitles,
      required double bmr,
      required List<double> listOfMultipliers}) {
    List<List<String>> rowData = [];
    List<String> weightInLbs = ['0.5 lb/week', '1 lb/week', '2 lb/week'];
    List<String> weightInKg = ['0.25 kg/week', '0.5 kg/week', '1 kg/week'];
    try {
      for (int i = 0; i < rowTitles.length; i++) {
        String text = '';
        if (i > 0 && state.unit == Units.imperial) {
          text = '\n ${weightInLbs[i - 1]}';
        }
        if (i > 0 && state.unit == Units.metric) {
          text = '\n ${weightInKg[i - 1]}';
        }
        rowData.add([
          rowTitles[i] + text,
          (bmr * listOfMultipliers[i]).toStringAsFixed(0)
        ]);
      }
    } catch (e) {
      throw Exception('Error in creating table row data');
    }

    return rowData;
  }
}
