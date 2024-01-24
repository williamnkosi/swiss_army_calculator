import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'compound_interest_page_event.dart';
part 'compound_interest_page_state.dart';
part 'compound_interest_page_bloc.freezed.dart';

class CompoundInterestPageBloc
    extends Bloc<CompoundInterestPageEvent, CompoundInterestPageState> {
  CompoundInterestPageBloc()
      : super(
            CompoundInterestPageState(formKey: GlobalKey<FormBuilderState>())) {
    on<_CheckFormStateEvent>(_onCheckFormStateEvent);
    on<_CalculateCompoundInterest>(_onCalculateCompoundInterest);
  }

  _onCheckFormStateEvent(_CheckFormStateEvent event, emit) {
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

  _onCalculateCompoundInterest(_CalculateCompoundInterest event, emit) {}
}
