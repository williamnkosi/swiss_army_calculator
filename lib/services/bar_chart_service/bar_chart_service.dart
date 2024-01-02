import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../locator_service.dart';
import '../theme_service/theme_service.dart';

class BarChartService {
  final _themeService = getIt.get<ThemeService>();
  static BarChart generateBarChart(
      List<BarChartGroupData> data, double maxYHeight) {
    return BarChart(BarChartData(
        maxY: maxYHeight,
        baselineY: 5,
        groupsSpace: 1,
        titlesData: const FlTitlesData(
          topTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          leftTitles: AxisTitles(
            axisNameWidget: Text('Principle'),
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
            ),
          ),
          bottomTitles: AxisTitles(
            drawBelowEverything: false,
            axisNameWidget: Text('years'),
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
            ),
          ),
        ),
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(
            show: false,
            border: const Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide(width: 1),
              bottom: BorderSide(width: 1),
            )),
        barGroups: data));
  }

  List<BarChartGroupData> generateBarGroups(
      {required List<double> values, List<double>? values2}) {
    List<BarChartGroupData> barGroups = [];

    for (int i = 0; i < values.length; i++) {
      barGroups.add(
        BarChartGroupData(
          x: i,
          groupVertically: true,
          barRods: [
            if (values2?[i] != null)
              BarChartRodData(
                borderRadius: BorderRadius.zero,
                fromY: values[i] - (values[i] * 0.1),
                toY: values2![i] + values[i],
                width: 10,
                color: _themeService.getAppTheme().contrast2,
              ),
            BarChartRodData(
              borderRadius: BorderRadius.zero,
              fromY: 0,
              toY: values[i],
              width: 10,
              color: _themeService.getAppTheme().contrast1,
            ),
          ],
        ),
      );
    }

    return barGroups;
  }
}
