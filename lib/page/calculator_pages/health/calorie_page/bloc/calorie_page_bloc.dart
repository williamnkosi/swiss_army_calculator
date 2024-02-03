import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';
import '../../../../../services/bloc_functions_service.dart';

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
      CalculateCaloriesEvent event, Emitter<CaloriePageState> emit) {}

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
          result: 0, isDiabled: true, rowData: [], formKey: state.formKey));
    } catch (e) {
      throw Exception('Error in resetting form state');
    }
  }
}
