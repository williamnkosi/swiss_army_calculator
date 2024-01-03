import 'package:flutter/material.dart';
import 'theme_colors.dart';

class ThemeService {
  ThemeData theme;
  ThemeColors themeName;
  ThemeService({required this.theme, required this.themeName});
  ThemeColors getAppTheme() {
    return themeName;
  }

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
        iconColor: theme.secondaryColor,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      textTheme: TextTheme(
          titleMedium: TextStyle(color: theme.mainColor),
          titleSmall: TextStyle(color: theme.mainColor)),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: theme.secondaryColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: theme
                  .secondaryColor), // Set the border color for enabled state
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: theme
                  .secondaryColor), // Set the border color for enabled state
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3.0, color: theme.secondaryColor),
        ),
      ),
      expansionTileTheme: ExpansionTileThemeData(
          iconColor: theme.mainColor,
          textColor: theme.mainColor,
          collapsedIconColor: theme.mainColor,
          collapsedTextColor: theme.mainColor,
          backgroundColor: theme.secondaryColor,
          collapsedBackgroundColor: theme.secondaryColor),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: theme.mainColor,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
