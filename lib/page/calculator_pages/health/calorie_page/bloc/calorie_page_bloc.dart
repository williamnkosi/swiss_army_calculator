import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/calculators.dart';
import '../../../../../models/types.dart';

part 'calorie_page_event.dart';
part 'calorie_page_state.dart';
part 'calorie_page_bloc.freezed.dart';

class CaloriePageBloc extends Bloc<CaloriePageEvent, CaloriePageState> {
  CaloriePageBloc(HealthCalculator calculator)
      : super(CaloriePageState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<CaloriePageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
