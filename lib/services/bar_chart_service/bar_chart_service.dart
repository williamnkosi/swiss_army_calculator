import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartService {
  static BarChart generateBarChart(List<BarChartGroupData> data) {
    return BarChart(BarChartData(
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

  static List<BarChartGroupData> generateBarGroups(List<double> values) {
    List<BarChartGroupData> barGroups = [];
    Random random = Random();
    for (int i = 0; i < values.length; i++) {
      barGroups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              fromY: 0,
              toY: random.nextInt(21).toDouble(),
              width: 10,
              color: Colors.purple[200],
            ),
          ],
        ),
      );
    }

    return barGroups;
  }
}
