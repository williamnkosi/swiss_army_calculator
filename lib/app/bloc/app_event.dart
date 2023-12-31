part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appStart() = AppStart;
  const factory AppEvent.appSwitchTheme({required ThemeNames themeName}) =
      AppSwitchTheme;
}
