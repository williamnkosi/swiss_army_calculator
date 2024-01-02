// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStart,
    required TResult Function(ThemeNames themeName) appSwitchTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStart,
    TResult? Function(ThemeNames themeName)? appSwitchTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStart,
    TResult Function(ThemeNames themeName)? appSwitchTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStart value) appStart,
    required TResult Function(AppSwitchTheme value) appSwitchTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStart value)? appStart,
    TResult? Function(AppSwitchTheme value)? appSwitchTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStart value)? appStart,
    TResult Function(AppSwitchTheme value)? appSwitchTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppStartImplCopyWith<$Res> {
  factory _$$AppStartImplCopyWith(
          _$AppStartImpl value, $Res Function(_$AppStartImpl) then) =
      __$$AppStartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppStartImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppStartImpl>
    implements _$$AppStartImplCopyWith<$Res> {
  __$$AppStartImplCopyWithImpl(
      _$AppStartImpl _value, $Res Function(_$AppStartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppStartImpl implements AppStart {
  const _$AppStartImpl();

  @override
  String toString() {
    return 'AppEvent.appStart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppStartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStart,
    required TResult Function(ThemeNames themeName) appSwitchTheme,
  }) {
    return appStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStart,
    TResult? Function(ThemeNames themeName)? appSwitchTheme,
  }) {
    return appStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStart,
    TResult Function(ThemeNames themeName)? appSwitchTheme,
    required TResult orElse(),
  }) {
    if (appStart != null) {
      return appStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStart value) appStart,
    required TResult Function(AppSwitchTheme value) appSwitchTheme,
  }) {
    return appStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStart value)? appStart,
    TResult? Function(AppSwitchTheme value)? appSwitchTheme,
  }) {
    return appStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStart value)? appStart,
    TResult Function(AppSwitchTheme value)? appSwitchTheme,
    required TResult orElse(),
  }) {
    if (appStart != null) {
      return appStart(this);
    }
    return orElse();
  }
}

abstract class AppStart implements AppEvent {
  const factory AppStart() = _$AppStartImpl;
}

/// @nodoc
abstract class _$$AppSwitchThemeImplCopyWith<$Res> {
  factory _$$AppSwitchThemeImplCopyWith(_$AppSwitchThemeImpl value,
          $Res Function(_$AppSwitchThemeImpl) then) =
      __$$AppSwitchThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeNames themeName});
}

/// @nodoc
class __$$AppSwitchThemeImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$AppSwitchThemeImpl>
    implements _$$AppSwitchThemeImplCopyWith<$Res> {
  __$$AppSwitchThemeImplCopyWithImpl(
      _$AppSwitchThemeImpl _value, $Res Function(_$AppSwitchThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeName = null,
  }) {
    return _then(_$AppSwitchThemeImpl(
      themeName: null == themeName
          ? _value.themeName
          : themeName // ignore: cast_nullable_to_non_nullable
              as ThemeNames,
    ));
  }
}

/// @nodoc

class _$AppSwitchThemeImpl implements AppSwitchTheme {
  const _$AppSwitchThemeImpl({required this.themeName});

  @override
  final ThemeNames themeName;

  @override
  String toString() {
    return 'AppEvent.appSwitchTheme(themeName: $themeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSwitchThemeImpl &&
            (identical(other.themeName, themeName) ||
                other.themeName == themeName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSwitchThemeImplCopyWith<_$AppSwitchThemeImpl> get copyWith =>
      __$$AppSwitchThemeImplCopyWithImpl<_$AppSwitchThemeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appStart,
    required TResult Function(ThemeNames themeName) appSwitchTheme,
  }) {
    return appSwitchTheme(themeName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appStart,
    TResult? Function(ThemeNames themeName)? appSwitchTheme,
  }) {
    return appSwitchTheme?.call(themeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appStart,
    TResult Function(ThemeNames themeName)? appSwitchTheme,
    required TResult orElse(),
  }) {
    if (appSwitchTheme != null) {
      return appSwitchTheme(themeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStart value) appStart,
    required TResult Function(AppSwitchTheme value) appSwitchTheme,
  }) {
    return appSwitchTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AppStart value)? appStart,
    TResult? Function(AppSwitchTheme value)? appSwitchTheme,
  }) {
    return appSwitchTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStart value)? appStart,
    TResult Function(AppSwitchTheme value)? appSwitchTheme,
    required TResult orElse(),
  }) {
    if (appSwitchTheme != null) {
      return appSwitchTheme(this);
    }
    return orElse();
  }
}

abstract class AppSwitchTheme implements AppEvent {
  const factory AppSwitchTheme({required final ThemeNames themeName}) =
      _$AppSwitchThemeImpl;

  ThemeNames get themeName;
  @JsonKey(ignore: true)
  _$$AppSwitchThemeImplCopyWith<_$AppSwitchThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppState {
  ThemeData? get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({ThemeData? theme});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData? theme});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$AppStateImpl(
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeData?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl implements _AppState {
  const _$AppStateImpl({this.theme});

  @override
  final ThemeData? theme;

  @override
  String toString() {
    return 'AppState(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({final ThemeData? theme}) = _$AppStateImpl;

  @override
  ThemeData? get theme;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
