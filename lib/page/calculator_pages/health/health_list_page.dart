import 'package:flutter/material.dart';

import '../../../services/calculator_service.dart';
import '../../../services/locator_service.dart';
import '../../../widgets/calculator_list_builder.dart';

class HealthListPage extends StatelessWidget {
  HealthListPage({super.key});
  final _calculatorService = getIt<CalculatorFactoryService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Health and Fitness'),
        ),
        body: CalculatorListBuilder(
          calculators: _calculatorService.healthCalculators,
        ));
  }
}
