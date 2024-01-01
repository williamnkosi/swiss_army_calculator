import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartService {
  List<PieChartSectionData> generatePieChartSections(
      {required List<double> dataPoints, List<String>? sectionNames}) {
    List<PieChartSectionData> sections = [];
    double total =
        dataPoints.fold(0, (previous, current) => previous + current);

    for (int i = 0; i < dataPoints.length; i++) {
      double percentage = dataPoints[i] / total;
      sections.add(
        PieChartSectionData(
          color: _getRandomColor(),
          value: percentage * 100,
          title:
              '${(percentage * 100).toStringAsFixed(2)}% - ${sectionNames?[i] ?? sectionNames![i]} ',
          radius: 50,
          showTitle: false,
          titleStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff)),
        ),
      );
    }

    return sections;
  }

  Color _getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
        random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
  }
}
