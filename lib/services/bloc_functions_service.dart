import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class BlocFunctionService {
  void checkFormState(
      GlobalKey<FormBuilderState> formKey, Emitter emit, dynamic state) {
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
