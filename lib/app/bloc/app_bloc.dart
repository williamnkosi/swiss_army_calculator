import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/theme/themes.dart';

import '../../theme/app_themes.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(AppState(
            theme: ThemeProvider.returnTheme(theme: appThemes['brown']!))) {
    on<AppEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
