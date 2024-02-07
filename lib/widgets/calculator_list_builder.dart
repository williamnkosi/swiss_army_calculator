import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';
import 'package:swiss_army_calculator/page/calculator_pages/calculator_wrapper.dart';
import 'package:swiss_army_calculator/page/calculator_pages/date_time/age/age_page.dart';
import 'package:swiss_army_calculator/page/calculator_pages/date_time/age/bloc/age_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/compound_interest_page/bloc/compound_interest_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/compound_interest_page/compound_interest_page.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/basal_metabolic_rate_page/bloc/basal_metabolic_rate_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/body_fat_page/bloc/body_fat_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/body_fat_page/body_fat_page.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/body_mass_index/body_mass_index_page.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/calorie_page/bloc/calorie_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/ideal_weight_page/bloc/ideal_weight_page_bloc.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/ideal_weight_page/ideal_weight_page.dart';
import '../app_state/favorites_bloc/favorites_bloc.dart';
import '../models/calculators.dart';
import '../page/calculator_pages/finance/simple_interest_page/bloc/simple_interest_page_bloc.dart';
import '../page/calculator_pages/finance/simple_interest_page/simple_interest_page.dart';
import '../page/calculator_pages/health/basal_metabolic_rate_page/basal_metabolic_rate_page.dart';
import '../page/calculator_pages/health/body_mass_index/bloc/body_mass_index_bloc.dart';
import '../page/calculator_pages/health/calorie_page/calorie_page.dart';

class CalculatorListBuilder extends StatelessWidget {
  final List<Calculator> calculators;
  const CalculatorListBuilder({Key? key, required this.calculators})
      : super(key: key);

  Widget _onGeneratePage(Calculator calculator) {
    if (calculator is FinancialCalculator) {
      switch (calculator.type) {
        case CalculatorsDefinedTypes.simpleInterest:
          return BlocProvider(
            create: (context) => SimpleInterestPageBloc(calculator),
            child: SimpleInterest(),
          );
        case CalculatorsDefinedTypes.compoundInterest:
          return BlocProvider(
            create: (context) => CompoundInterestPageBloc(calculator),
            child: const CompoundInterestPage(),
          );
        default:
          return SimpleInterest();
      }
    } else if (calculator is HealthCalculator) {
      switch (calculator.type) {
        case CalculatorsDefinedTypes.bmi:
          return BlocProvider(
            create: (context) => BodyMassIndexBloc(calculator),
            child: const BodyMassIndexPage(),
          );

        case CalculatorsDefinedTypes.bmr:
          return BlocProvider(
            create: (context) => BasalMetabolicRatePageBloc(calculator),
            child: const BasalMetabolicRatePage(),
          );
        case CalculatorsDefinedTypes.calorie:
          return BlocProvider(
            create: (context) => CaloriePageBloc(calculator),
            child: const CaloriePage(),
          );
        case CalculatorsDefinedTypes.idealWeight:
          return BlocProvider(
            create: (context) => IdealWeightPageBloc(calculator),
            child: const IdealWeightPage(),
          );
        case CalculatorsDefinedTypes.bodyFat:
          return BlocProvider(
            create: (context) => BodyFatPageBloc(calculator),
            child: const BodyFatPage(),
          );
        default:
          return const BodyMassIndexPage();
      }
    } else if (calculator is DateAndTimeCalculator) {
      switch (calculator.type) {
        case CalculatorsDefinedTypes.age:
          return BlocProvider(
            create: (context) => AgePageBloc(calculator),
            child: const AgePage(),
          );
        case CalculatorsDefinedTypes.date:
          return SimpleInterest();
        case CalculatorsDefinedTypes.time:
          return SimpleInterest();
        default:
          return SimpleInterest();
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
