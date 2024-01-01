import 'package:flutter/material.dart';

class ThemeProvider {
  static ThemeData returnTheme(
      {required Color mainColor,
      required Color secondaryColor,
      required Color accentColor}) {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: mainColor,
      appBarTheme: AppBarTheme(
          backgroundColor: mainColor,
          titleTextStyle:
              TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: secondaryColor)),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: mainColor,
          onPrimary: mainColor,
          secondary: secondaryColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.pink,
          onBackground: Colors.pink,
          surface: Colors.white,
          onSurface: Colors.blue),
      listTileTheme: ListTileThemeData(
        textColor: secondaryColor,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      textTheme: const TextTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: mainColor,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
