import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';
import 'package:swiss_army_calculator/widgets/calculator_list_builder.dart';

class FinanceListPage extends StatelessWidget {
  const FinanceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Finance'),
        ),
        body: const CalculatorListBuilder(
          calculators: FinanceCalculators.values,
        ));
  }
}
