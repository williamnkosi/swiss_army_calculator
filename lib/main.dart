import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiss_army_calculator/bottom_navigation_bar.dart';
import 'package:swiss_army_calculator/page/account.dart';
import 'package:swiss_army_calculator/page/favorites.dart';
import 'package:swiss_army_calculator/page/home.dart';
import 'package:swiss_army_calculator/widgets/bottom_navigation_bar/cubit/bottom_navigation_bar_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => BottomNavigationBarCubit(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
          default:
            // Handle unknown routes or provide a default page
            return MaterialPageRoute(builder: (context) => const AccountPage());
        }
      },
    );
  }
}
