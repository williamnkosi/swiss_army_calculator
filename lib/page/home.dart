import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';
import 'package:swiss_army_calculator/widgets/calculator_group_button/calculator_group_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
      child: Center(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: CalculatorTypes.values.length,
          itemBuilder: (BuildContext context, int index) {
            return CalculatorGroupButton(
                title: CalculatorTypes.values[index].value);
          },
        ),
      ),
    );
  }
}
