import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/models/time_types.dart';
part 'simple_interest_page_state.freezed.dart';

@freezed
class SimpleInterestPageState with _$SimpleInterestPageState {
  const factory SimpleInterestPageState({
    required GlobalKey<FormBuilderState> formKey,
    @Default([]) List<PieChartSectionData> sections,
    @Default([]) List<List<double>> barChartData,
    @Default(RatePeriodTypes.years) RatePeriodTypes ratePeriodType,
    @Default(TimePeriodsTypes.monthly) TimePeriodsTypes timePeriodType,
    @Default(0) double principal,
    @Default(0) double rate,
    @Default(0) double duration,
    @Default(0) double result,
    @Default('') String printOutput,
    @Default(false) isExpanded,
    @Default(true) isDiabled,
  }) = _SimpleInterestPageState;
}
