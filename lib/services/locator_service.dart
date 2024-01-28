import 'package:get_it/get_it.dart';
import 'package:swiss_army_calculator/services/calculator_service.dart';

import 'package:swiss_army_calculator/services/theme_service/theme_service.dart';

import 'theme_service/app_themes.dart';

GetIt getIt = GetIt.instance;
void setupGetIt() async {
  getIt.registerSingleton<ThemeService>(ThemeService(
      theme: ThemeService.returnTheme(theme: appThemes.entries.first.value),
      themeName: appThemes.entries.first.value));
  getIt.registerSingleton<CalculatorFactoryService>(CalculatorFactoryService());
}
