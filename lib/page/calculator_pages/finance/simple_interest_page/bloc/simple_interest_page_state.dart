import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'simple_interest_page_state.freezed.dart';

@freezed
class SimpleInterestPageState with _$SimpleInterestPageState {
  const factory SimpleInterestPageState({
    required GlobalKey<FormBuilderState> formKey,
    @Default([]) List<PieChartSectionData> sections,
    @Default(0) double result,
    @Default(false) isExpanded,
    @Default(true) isDiabled,
  }) = _SimpleInterestPageState;
}
