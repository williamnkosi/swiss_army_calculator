import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/services/locator_service.dart';

import 'theme_service/theme_service.dart';

class PieChartService {
  final _themeService = getIt.get<ThemeService>();
  List<PieChartSectionData> generatePieChartSections(
      {required List<double> dataPoints, List<String>? sectionNames}) {
    List<PieChartSectionData> sections = [];
    double total =
        dataPoints.fold(0, (previous, current) => previous + current);

    for (int i = 0; i < dataPoints.length; i++) {
      double percentage = dataPoints[i] / total;
      sections.add(
        PieChartSectionData(
          color: _getColor(i),
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

  Color _getColor(int i) {
    if (i == 0) return _themeService.getAppTheme().contrast1;
    if (i == 1) return _themeService.getAppTheme().contrast2;
    return _themeService.getAppTheme().contrast3;
  }
}
