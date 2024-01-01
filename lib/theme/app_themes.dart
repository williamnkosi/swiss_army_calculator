import 'package:flutter/material.dart';

import 'theme_colors.dart';

enum ThemeNames {
  blue,
  brown,
}

Map<ThemeNames, ThemeColors> appThemes = {
  ThemeNames.blue: ThemeColors(
      mainColor: const Color(0xFF1404d6),
      secondaryColor: const Color(0xFFF4F4FB),
      accentColor: const Color(0xFF0459AF)),
  ThemeNames.brown: ThemeColors(
      mainColor: const Color(0xFFB76632),
      secondaryColor: const Color(0xFFFBF7F4),
      accentColor: const Color(0xFF98332A)),
};
