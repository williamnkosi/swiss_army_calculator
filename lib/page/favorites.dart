import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/app_state/favorites_bloc/favorites_bloc.dart';
import 'package:swiss_army_calculator/widgets/calculator_list_tile_builder.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        return Center(
            child: CalculatorListBuilder(
          calculators: state.favorites,
        ));
      },
    );
  }
}
