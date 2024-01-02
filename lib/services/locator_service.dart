import 'package:get_it/get_it.dart';

import 'package:swiss_army_calculator/theme/themes.dart';

import '../theme/app_themes.dart';

GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ThemeProvider>(ThemeProvider(
      theme: ThemeProvider.returnTheme(theme: appThemes.entries.first.value)));
}
