import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/widgets/calculator_list_builder.dart';
import '../../../../services/calculator_service.dart';
import '../../../../services/locator_service.dart';

class FinanceListPage extends StatelessWidget {
  FinanceListPage({super.key});
  final _calculatorService = getIt<CalculatorFactoryService>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Finance'),
        ),
        body: CalculatorListBuilder(
          calculators: _calculatorService.financialCalculators,
        ));
  }
}
