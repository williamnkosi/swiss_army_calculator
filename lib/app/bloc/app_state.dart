part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    ThemeData? theme,
  }) = _AppState;
}
