import 'package:flutter/material.dart';

import '../../../services/calculator_service.dart';
import '../../../services/locator_service.dart';
import '../../../widgets/calculator_list_builder.dart';

class DateTimeListPage extends StatelessWidget {
  DateTimeListPage({super.key});
  final _calculatorService = getIt<CalculatorFactoryService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Date & Time'),
        ),
        body: CalculatorListBuilder(
          calculators: _calculatorService.dateAndTimeCalculators,
        ));
  }
}
