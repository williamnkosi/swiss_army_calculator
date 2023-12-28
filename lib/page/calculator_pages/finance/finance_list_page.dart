import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';

class FinanceListPage extends StatelessWidget {
  const FinanceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Finance'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: ListView.builder(
          itemCount: FinanceCalculators.values.length,
          itemBuilder: (context, index) {
            return ListTile(
              trailing: const Icon(Icons.favorite),
              contentPadding: const EdgeInsets.all(10.0),
              title: Text(FinanceCalculators.values[index].value),
              onTap: () {
                print("testin");
              },
            );
          },
        ));
  }
}
