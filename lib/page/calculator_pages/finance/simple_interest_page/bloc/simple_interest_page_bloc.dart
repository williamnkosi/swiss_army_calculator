import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:swiss_army_calculator/services/pie_chart_service.dart';

import '../../../../../utils/finance_formulas.dart';
import '../simple_interes_text_field_names.dart';
import 'simple_interest_page_event.dart';
import 'simple_interest_page_state.dart';

class SimpleInterestPageBloc
    extends Bloc<SimpleInterestPageEvent, SimpleInterestPageState> {
  SimpleInterestPageBloc()
      : super(SimpleInterestPageState(formKey: GlobalKey<FormBuilderState>())) {
    on<CheckFormStateEvent>(_onCheckFormStateEvent);
    on<CalculateResultEvent>(_onCalculateResult);
    on<ChangeRatePeriodEvent>(_onChangeRatePeriodEvent);
    on<ChangeDurationPeriodEvent>(_onChangeDurationPeriodEvent);
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

  _onCalculateResult(CalculateResultEvent event, emit) {
    final principle = double.parse(state.formKey.currentState!
        .fields[SimpleInterestTextFieldNames.principal.value]!.value);

    final rate = double.parse(state.formKey.currentState!
        .fields[SimpleInterestTextFieldNames.rate.value]!.value);

    final duration = double.parse(state.formKey.currentState!
        .fields[SimpleInterestTextFieldNames.duration.value]!.value);

    final result = calculateSimpleInterest(principle, rate, duration);
    final sections = _generatePieChartSections([principle, result]);
    final barChartData = _generateBarChartData(
        principal: principle, rate: rate, duration: duration);
    emit(state.copyWith(
        result: result,
        principal: principle,
        rate: rate,
        duration: duration,
        sections: sections,
        barChartData: barChartData));

    final text = _onPrintOutputEvent();
    emit(state.copyWith(printOutput: text));
  }

  _onChangeRatePeriodEvent(ChangeRatePeriodEvent event, emit) {}

  _onChangeDurationPeriodEvent(ChangeDurationPeriodEvent event, emit) {}

  String _onPrintOutputEvent() {
    return 'The simple interest on the ${state.principal} loan over ${state.duration} years at a ${state.rate}% annual interest rate would be ${state.result}';
  }

  _generatePieChartSections(List<double> dataPoints) {
    final service = PieChartService();
    return service.generatePieChartSections(
        dataPoints: dataPoints,
        sectionNames: [
          SimpleInterestTextFieldNames.principal.value,
          'Interest'
        ]);
  }

  List<List<double>> _generateBarChartData(
      {required double principal,
      required double duration,
      required double rate}) {
    double interest = 0;
    List<double> principalValue = [];
    List<double> interestRateValues = [];
    for (int i = 0; i < duration; i++) {
      interest = interest + principal * rate * 1 / 100;
      principalValue.add(principal);
      interestRateValues.add(interest);
    }
    return [principalValue, interestRateValues];
  }
}
