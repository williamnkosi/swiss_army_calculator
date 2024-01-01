import 'package:flutter/material.dart';

import 'theme_colors.dart';

class ThemeProvider {
  static ThemeData returnTheme({required ThemeColors theme}) {
    return ThemeData.dark().copyWith(
      scaffoldBackgroundColor: theme.mainColor,
      appBarTheme: AppBarTheme(
          backgroundColor: theme.mainColor,
          titleTextStyle: TextStyle(
              color: theme.secondaryColor, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: theme.secondaryColor)),
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: theme.mainColor,
          onPrimary: theme.mainColor,
          secondary: theme.secondaryColor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          background: Colors.pink,
          onBackground: Colors.pink,
          surface: Colors.white,
          onSurface: Colors.blue),
      listTileTheme: ListTileThemeData(
        textColor: theme.secondaryColor,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      textTheme: const TextTheme(),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: theme.mainColor,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
