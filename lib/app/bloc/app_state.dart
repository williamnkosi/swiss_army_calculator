part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required ThemeData theme,
  }) = _AppState;
}
