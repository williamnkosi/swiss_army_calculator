import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/bottom_navigation_bar.dart';
import 'package:swiss_army_calculator/page/account.dart';
import 'package:swiss_army_calculator/page/calculator_pages/finance/finance_list_page.dart';
import 'package:swiss_army_calculator/page/favorites.dart';
import 'package:swiss_army_calculator/page/home.dart';
import 'package:swiss_army_calculator/themes.dart';
import 'package:swiss_army_calculator/widgets/bottom_navigation_bar/cubit/bottom_navigation_bar_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeProvider.returnTheme(
          mainColor: const Color(0xFF1404d6),
          secondaryColor: const Color(0xFFF4F4FB),
          accentColor: const Color(0xFF0459AF)),
      home: BlocProvider(
        create: (context) => BottomNavigationBarCubit(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Swiss Army Calculator'),
          ),
          body: BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
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
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => const HomePage());
          case '/favorites':
            // You can extract parameters from settings.arguments
            return MaterialPageRoute(
                builder: (context) => const FavoritesPage());
          case '/finance':
            return MaterialPageRoute(
                builder: (context) => const FinanceListPage());

          default:
            // Handle unknown routes or provide a default page
            return MaterialPageRoute(builder: (context) => const AccountPage());
        }
      },
    );
  }
}
