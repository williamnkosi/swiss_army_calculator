import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/app_state/app_bloc/app_bloc.dart';
import 'package:swiss_army_calculator/app_state/favorites_bloc/favorites_bloc.dart';
import 'package:swiss_army_calculator/bottom_navigation_bar.dart';
import 'package:swiss_army_calculator/page/account.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/finace_list_page/finance_list_page.dart';
import 'package:swiss_army_calculator/page/calculator_pages/health/health_list_page.dart';
import 'package:swiss_army_calculator/page/favorites.dart';
import 'package:swiss_army_calculator/page/home.dart';
import 'package:swiss_army_calculator/widgets/bottom_navigation_bar/cubit/bottom_navigation_bar_cubit.dart';

import 'page/calculator_pages/date_time/date_time_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppBloc()..add(const AppStart()),
        ),
        BlocProvider(create: (context) => FavoritesBloc()),
        BlocProvider(
          create: (context) => BottomNavigationBarCubit(),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return MaterialApp(
            theme: state.theme,
            home: Scaffold(
              appBar: AppBar(
                title: const Text('Swiss Army Calculator'),
              ),
              body: BlocBuilder<BottomNavigationBarCubit,
                  BottomNavigationBarState>(
                builder: (context, state) {
                  if (state.type.index == 0) {
                    return const Center(child: HomePage());
                  } else if (state.type.index == 1) {
                    return const Center(child: FavoritesPage());
                  } else {
                    return const Center(child: AccountPage());
                  }
                },
              ),
              bottomNavigationBar: const AppBottomNavigationBar(),
            ),
            initialRoute: '/',
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/':
                  return MaterialPageRoute(
                      builder: (context) => const HomePage());
                case '/favorites':
                  // You can extract parameters from settings.arguments
                  return MaterialPageRoute(
                      builder: (context) => const FavoritesPage());
                case '/finance':
                  return MaterialPageRoute(
                      builder: (context) => FinanceListPage());
                case '/health':
                  return MaterialPageRoute(
                      builder: (context) => HealthListPage());
                case '/datetime':
                  return MaterialPageRoute(
                      builder: (context) => DateTimeListPage());

                default:
                  // Handle unknown routes or provide a default page
                  return MaterialPageRoute(
                      builder: (context) => const AccountPage());
              }
            },
          );
        },
      ),
    );
  }
}
