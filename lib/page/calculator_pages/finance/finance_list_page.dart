import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';
import 'package:swiss_army_calculator/page/calculator_pages/calculator_wrapper.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/simple_interest_page/bloc/simple_interest_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/simple_interest_page/simple_interest_page.dart';

class FinanceListPage extends StatelessWidget {
  const FinanceListPage({super.key});

  Widget _onGeneratePage(FinanceCalculators value) {
    if (value == FinanceCalculators.simpleInterest) {
      return BlocProvider(
        create: (context) => SimpleInterestPageBloc(),
        child: SimpleInterest(),
      );
    }
    return SimpleInterest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Finance'),
        ),
        body: ListView.builder(
          itemCount: FinanceCalculators.values.length,
          itemBuilder: (context, index) {
            String title = FinanceCalculators.values[index].value;
            return ListTile(
              trailing: IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () => print('asdf'),
              ),
              contentPadding: const EdgeInsets.all(10.0),
              title: Text(title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CalculatorPageWrapper<FinanceCalculators>(
                            title: title,
                            page: _onGeneratePage(
                                FinanceCalculators.values[index]),
                          )),
                );
              },
            );
          },
        ));
  }
}
