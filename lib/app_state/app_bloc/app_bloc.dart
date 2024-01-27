import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/services/theme_service/theme_service.dart';

import '../../services/calculator_service.dart';
import '../../services/locator_service.dart';
import '../../services/theme_service/app_themes.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  var themeService = getIt.get<ThemeService>();
  AppBloc() : super(const AppState()) {
    on<AppStart>(_onAppStart);
    on<AppSwitchTheme>(_onAppSwitchTheme);
  }

  _onAppStart(AppStart event, emit) {
    final myServiceInstance = getIt<CalculatorFactoryService>();
    emit(state.copyWith(theme: themeService.theme));
  }

  _onAppSwitchTheme(AppSwitchTheme event, emit) {
    final theme = ThemeService.returnTheme(theme: appThemes[event.themeName]!);
    themeService.theme = theme;
    emit(state.copyWith(theme: theme));
  }
}
