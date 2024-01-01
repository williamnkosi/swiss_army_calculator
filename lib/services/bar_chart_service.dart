import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartService {
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
