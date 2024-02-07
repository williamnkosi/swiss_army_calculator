import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../models/calculators.dart';

part 'age_page_event.dart';
part 'age_page_state.dart';

part 'age_page_bloc.freezed.dart';

class AgePageBloc extends Bloc<AgePageEvent, AgePageState>
    with CheckFormStateMixin<AgePageEvent, AgePageState> {
  AgePageBloc(DateAndTimeCalculator calculator)
      : super(AgePageState(
            formKey: GlobalKey<FormBuilderState>(),
            calculatorData: calculator)) {
    on<AgePageEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<CheckFormStateEvent>((CheckFormStateEvent event, emit) =>
        onCheckFormStateEvent(
            emit: emit, formKey: state.formKey, state: state));
  }
}

mixin CheckFormStateMixin<TEvent, TState> on Bloc<TEvent, TState> {
  void onCheckFormStateEvent(
      {required Emitter<TState> emit,
      required GlobalKey<FormBuilderState> formKey,
      required dynamic state}) {
    if (formKey.currentState!.isValid) {
      try {
        if (formKey.currentState!.validate()) {
          formKey.currentState?.save();

          emit(state.copyWith(isDiabled: false));
        } else {
          emit(state.copyWith(isDiabled: true));
        }
      } catch (e) {
        emit(state.copyWith(isDiabled: true));
      }
    }
  }
}
