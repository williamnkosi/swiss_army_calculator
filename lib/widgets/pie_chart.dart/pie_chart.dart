import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  final List<PieChartSectionData> sections;
  const PieChartWidget({super.key, required this.sections});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: sections,
        borderData: FlBorderData(show: false),
        sectionsSpace: 0,
        centerSpaceRadius: 20,
      ),
    );
  }
}
