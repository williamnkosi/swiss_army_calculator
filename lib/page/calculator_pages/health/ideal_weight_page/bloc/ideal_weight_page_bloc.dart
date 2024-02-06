import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/utils/functions.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';
import '../../../../../utils/health_formulas.dart';
import '../../health_page_text_field_names.dart';

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
      CalculateIdealWeightEvent event, Emitter<IdealWeightPageState> emit) {
    try {
      if (state.unit == Units.imperial) {
        Map<String, dynamic> formData = state.formKey.currentState?.value ?? {};
        final heightFeet = int.parse(formData[HealthTextData.heightFeet.name]);
        final heightInches =
            int.parse(formData[HealthTextData.heightInches.name]);
        final hamwiResult = idealWeightHamwiFormula(heightInImperial: {
          'feet': heightFeet,
          'inches': heightInches,
        }, gender: state.gender);
        final robinsonResult = idealWeightRobinsonFormula(heightInImperial: {
          'feet': heightFeet,
          'inches': heightInches,
        }, gender: state.gender);
        final rowData = _createTableRowData(results: [
          hamwiResult.toString(),
          robinsonResult.toString(),
        ]);
        emit(state.copyWith(resultRowData: rowData));
      } else {
        Map<String, dynamic> formData = state.formKey.currentState?.value ?? {};
        final heightInCM = double.parse(formData[HealthTextData.heightCM.name]);
        final heightInFeetAndInches =
            convertHeightCMToFeetAndInches(heightInCM);
        final hamwiResult = idealWeightHamwiFormula(
            heightInImperial: heightInFeetAndInches, gender: state.gender);
        final robinsonResult = idealWeightRobinsonFormula(
            heightInImperial: heightInFeetAndInches, gender: state.gender);
        final rowData = _createTableRowData(results: [
          hamwiResult.toString(),
          robinsonResult.toString(),
        ]);
        emit(state.copyWith(resultRowData: rowData));
      }
    } catch (e) {
      throw Exception('Error in calculating ideal weight');
    }
  }

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

  List<List<String>> _createTableRowData({
    required List<String> results,
  }) {
    try {
      List<String> rowTitles = ['Hamwi(1964)', 'Robinson(1983)'];
      List<List<String>> rowData = [];
      for (int i = 0; i < rowTitles.length; i++) {
        rowData.add([rowTitles[i], results[i]]);
      }
      return rowData;
    } catch (e) {
      throw Exception('Error in creating table row data');
    }
  }
}
