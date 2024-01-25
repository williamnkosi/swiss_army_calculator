import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/compound_interest_page/compound_interest_text_field_data.dart';

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

  _onCalculateCompoundInterest(_CalculateCompoundInterest event, emit) {
    try {
      final initialInvestment = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.initialInvestment]!.value);
      final annualContribution = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.annualContribution]!.value);
      final monthlyContribution = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.monthlyContribution]!.value);
      final interestRate = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.interestRate]!.value);
      final compoundedFrequency = state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.compounded]!.value;
      final lengthYears = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.lengthYears]!.value);
      final lengthMonths = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.lengthMonths]!.value);
      final inflationRate = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.inflationRate]!.value);
    } catch (e) {}
  }
}
