import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/calculator_wrapper.dart';
import '../app_state/favorites_bloc/favorites_bloc.dart';
import '../models/calculators.dart';
import '../page/calculator_pages/finance/simple_interest_page/bloc/simple_interest_page_bloc.dart';
import '../page/calculator_pages/finance/simple_interest_page/bloc/simple_interest_page_event.dart';
import '../page/calculator_pages/finance/simple_interest_page/simple_interest_page.dart';

class CalculatorListBuilder extends StatelessWidget {
  final List<Calculator> calculators;
  const CalculatorListBuilder({Key? key, required this.calculators})
      : super(key: key);

  Widget _onGeneratePage(Calculator value) {
    if (value is FinancialCalculator) {
      // switch (value.type) {
      //   case 'Simple Interest':
      //     return BlocProvider(
      //       create: (context) =>
      //           SimpleInterestPageBloc()..add(BlocCreatedEvent(value)),
      //       child: SimpleInterest(),
      //     );
      //   default:
      //     return SimpleInterest();
      // }
      if (value.name == 'Simple Interest') {
        return BlocProvider(
          create: (context) =>
              SimpleInterestPageBloc()..add(BlocCreatedEvent(value)),
          child: SimpleInterest(),
        );
      }
    }
    return SimpleInterest();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calculators.length,
      itemBuilder: (context, index) {
        String title = calculators[index].name;
        return BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, state) {
            bool isFavorited = state.favorites.contains(calculators[index]);
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
