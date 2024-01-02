import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/theme/themes.dart';

import '../../services/locator_service.dart';
import '../../theme/app_themes.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(AppState(
            theme: ThemeProvider.returnTheme(
                theme: appThemes.entries.first.value))) {
    on<AppSwitchTheme>(_onAppSwitchTheme);
  }
  _onAppSwitchTheme(AppSwitchTheme event, emit) {
    var myAppModel = getIt.get<ThemeProvider>();
    final theme = ThemeProvider.returnTheme(theme: appThemes[event.themeName]!);
    myAppModel.theme = theme;
    emit(state.copyWith(theme: theme));
  }
}
