import 'package:flutter/material.dart';

class ThemeColors {
  final Color mainColor;
  final Color secondaryColor;
  final Color accentColor;

  ThemeColors(
      {required this.mainColor,
      required this.secondaryColor,
      required this.accentColor});
}

Map<String, ThemeColors> appThemes = {
  'current': ThemeColors(
      mainColor: const Color(0xFF1404d6),
      secondaryColor: const Color(0xFFF4F4FB),
      accentColor: const Color(0xFF0459AF))
};

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
