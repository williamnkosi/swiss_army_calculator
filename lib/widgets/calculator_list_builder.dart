import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';
import 'package:swiss_army_calculator/page/calculator_pages/calculator_wrapper.dart';

import '../app_state/favorites_bloc/favorites_bloc.dart';
import '../page/calculator_pages/finance/simple_interest_page/bloc/simple_interest_page_bloc.dart';
import '../page/calculator_pages/finance/simple_interest_page/simple_interest_page.dart';

class CalculatorListBuilder extends StatelessWidget {
  final List<dynamic> calculators;
  const CalculatorListBuilder({Key? key, required this.calculators})
      : super(key: key);

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
    return ListView.builder(
      itemCount: calculators.length,
      itemBuilder: (context, index) {
        String title = calculators[index].value.toString();
        return BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, state) {
            bool isFavorited =
                state.favorites.contains(FinanceCalculators.values[index]);
            return ListTile(
              trailing: IconButton(
                icon: isFavorited
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_outline_outlined),
                onPressed: () {
                  BlocProvider.of<FavoritesBloc>(context)
                      .add(ToggleFavorite(calculator: calculators[index]));
                },
              ),
              contentPadding: const EdgeInsets.all(10.0),
              title: Text(title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CalculatorPageWrapper(
                            title: title,
                            page: _onGeneratePage(calculators[index]),
                          )),
                );
              },
            );
          },
        );
      },
    );
  }
}
