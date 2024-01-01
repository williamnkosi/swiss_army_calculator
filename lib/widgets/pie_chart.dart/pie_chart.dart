import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/widgets/indicator.dart';

class PieChartWidget extends StatelessWidget {
  final List<PieChartSectionData> sections;
  const PieChartWidget({super.key, required this.sections});

  List<Widget> _buildLegends() {
    List<Widget> widgets = [];
    for (int i = 0; i < sections.length; i++) {
      widgets.add(Column(
        children: [
          Indicator(
            color: sections[i].color,
            text: sections[i].title,
            isSquare: true,
          ),
          const SizedBox(
            height: 4,
          ),
        ],
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: PieChart(
            PieChartData(
              sections: sections,
              borderData: FlBorderData(show: false),
              sectionsSpace: 0,
              centerSpaceRadius: 20,
            ),
          ),
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[..._buildLegends()],
          ),
        ),
      ],
    );
  }
}
