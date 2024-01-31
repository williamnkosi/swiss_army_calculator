import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/models/calculators.dart';
import 'package:swiss_army_calculator/utils/health_formulas.dart';

import '../../../../../models/types.dart';
import '../body_mass_index_field_names.dart';

part 'body_mass_index_event.dart';
part 'body_mass_index_state.dart';
part 'body_mass_index_bloc.freezed.dart';

class BodyMassIndexBloc extends Bloc<BodyMassIndexEvent, BodyMassIndexState> {
  BodyMassIndexBloc(HealthCalculator calculator)
      : super(BodyMassIndexState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<BodyMassIndexBlocStarted>(_onBodyMassIndexBlocStarted);
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculaBMIEvent>(_onCalculaBMIEvent);
    on<ToggleUnitEvent>(_onToggleUnitEvent);
  }

  _onBodyMassIndexBlocStarted(
      BodyMassIndexBlocStarted event, Emitter<BodyMassIndexState> emit) {
    emit(state.copyWith(calculatorData: event.calculator));
  }

  _onCheckFormStateEvent(
      CheckFormStateEvent event, Emitter<BodyMassIndexState> emit) {
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

  _onCalculaBMIEvent(CalculaBMIEvent event, Emitter<BodyMassIndexState> emit) {
    try {
      final age = state.formKey.currentState!
          .fields[BodyMassIndexTextFieldData.age.name]!.value;
      final weight = state.formKey.currentState!
          .fields[BodyMassIndexTextFieldData.weight.name]!.value;
      final heightFeet = state.formKey.currentState!
          .fields[BodyMassIndexTextFieldData.heightFeet.name]!.value;
      final heightInches = state.formKey.currentState!
          .fields[BodyMassIndexTextFieldData.heightInches.name]!.value;

      if (state.unit == Units.imperial) {
        double result = calculateBMIinPounds(double.parse(weight),
            double.parse(heightFeet), double.parse(heightInches));

        emit(state.copyWith(result: result));
      } else {
        final heightInMeters = state.formKey.currentState!
            .fields[BodyMassIndexTextFieldData.heightCM.name]!.value;
        double result = calculateBMIinKilograms(
            double.parse(weight), double.parse(heightInMeters));
        emit(state.copyWith(result: result));
      }
    } catch (e) {
      print(e);
    }
  }

  _onToggleUnitEvent(ToggleUnitEvent event, Emitter<BodyMassIndexState> emit) {
    if (state.unit == Units.imperial) {
      emit(state.copyWith(unit: Units.metric));
    } else {
      emit(state.copyWith(unit: Units.imperial));
    }
  }
}
