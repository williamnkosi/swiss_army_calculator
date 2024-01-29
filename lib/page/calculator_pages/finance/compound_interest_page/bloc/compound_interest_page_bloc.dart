import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/models/calculators.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/compound_interest_page/compound_interest_text_field_data.dart';

part 'compound_interest_page_event.dart';
part 'compound_interest_page_state.dart';
part 'compound_interest_page_bloc.freezed.dart';

class CompoundInterestPageBloc
    extends Bloc<CompoundInterestPageEvent, CompoundInterestPageState> {
  CompoundInterestPageBloc(FinancialCalculator calculator)
      : super(CompoundInterestPageState(
            formKey: GlobalKey<FormBuilderState>(), calculator: calculator)) {
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculateCompoundInterest>(_onCalculateCompoundInterest);
  }

  _onCheckFormStateEvent(CheckFormStateEvent event, emit) {
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

  _onCalculateCompoundInterest(CalculateCompoundInterest event, emit) {
    try {
      final amount = _compoundFormuale()!;
      emit(state.copyWith(totalAmount: amount));
      print('amount: $amount');
    } catch (e) {}
  }

  double? _compoundFormuale() {
    print(state.formKey.currentState!
        .fields[CompoundInterestTextFieldData.initialInvestment.name]!.value);
    final principal = double.parse(state.formKey.currentState!
        .fields[CompoundInterestTextFieldData.initialInvestment.name]!.value);
    final interestRate = double.parse(state.formKey.currentState!
        .fields[CompoundInterestTextFieldData.interestRate.name]!.value);
    final compoundedFrequency = state.formKey.currentState!
            .fields[CompoundInterestTextFieldData.compounded.name]?.value ??
        12;
    final lengthYears = double.parse(state.formKey.currentState!
        .fields[CompoundInterestTextFieldData.lengthYears.name]!.value);
    final lengthMonths = double.parse(state.formKey.currentState!
        .fields[CompoundInterestTextFieldData.lengthMonths.name]!.value);
    // final inflationRate = double.parse(state.formKey.currentState!
    //     .fields[CompoundInterestTextFieldData.inflationRate.name]!.value);
    return calculateCompoundInterestWithContributions(
        principal, interestRate, lengthYears.toInt(), 500);
    // return (principal *
    //     (1 + interestRate / compoundedFrequency) *
    //     pow(compoundedFrequency, lengthYears));

    // return null;
  }

  double? _compoundFormualeWithContributions() {
    try {
      final monthlyContribution = double.parse(state
          .formKey
          .currentState!
          .fields[CompoundInterestTextFieldData.monthlyContribution.name]!
          .value);
      final interestRate = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.interestRate.name]!.value);
      final compoundedFrequency = state.formKey.currentState!
              .fields[CompoundInterestTextFieldData.compounded.name]?.value ??
          12;
      final lengthYears = double.parse(state.formKey.currentState!
          .fields[CompoundInterestTextFieldData.lengthYears.name]!.value);
      // final lengthMonths = double.parse(state.formKey.currentState!
      //     .fields[CompoundInterestTextFieldData.lengthMonths]!.value);

      return monthlyContribution *
          (((1 +
                  (interestRate / compoundedFrequency) *
                      pow(compoundedFrequency, lengthYears - 1))) /
              (interestRate / compoundedFrequency));
    } catch (e) {
      print('failed 2');
    }
    return null;
  }

  double calculateCompoundInterestWithContributions(double principal,
      double annualInterestRate, int years, double monthlyContribution) {
    // Convert annual interest rate to monthly interest rate
    double monthlyInterestRate = annualInterestRate / 12 / 100;

    // Calculate the number of total compounding periods
    int totalMonths = years * 12;

    // Initialize the future value (FV) to the principal amount
    double futureValue = principal;

    for (int i = 1; i <= totalMonths; i++) {
      // Calculate interest for the current month
      double interest = futureValue * monthlyInterestRate;

      // Add monthly contribution to the future value
      futureValue += monthlyContribution;

      // Add interest to the future value
      futureValue += interest;
    }

    return futureValue;
  }
}
