// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFavorites,
    required TResult Function(String id) addFavorite,
    required TResult Function(String id) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFavorites,
    TResult? Function(String id)? addFavorite,
    TResult? Function(String id)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFavorites,
    TResult Function(String id)? addFavorite,
    TResult Function(String id)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFavorites value) getFavorites,
    required TResult Function(AddFavorite value) addFavorite,
    required TResult Function(RemoveFavorite value) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFavorites value)? getFavorites,
    TResult? Function(AddFavorite value)? addFavorite,
    TResult? Function(RemoveFavorite value)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFavorites value)? getFavorites,
    TResult Function(AddFavorite value)? addFavorite,
    TResult Function(RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FavoritesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFavorites,
    required TResult Function(String id) addFavorite,
    required TResult Function(String id) removeFavorite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFavorites,
    TResult? Function(String id)? addFavorite,
    TResult? Function(String id)? removeFavorite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFavorites,
    TResult Function(String id)? addFavorite,
    TResult Function(String id)? removeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFavorites value) getFavorites,
    required TResult Function(AddFavorite value) addFavorite,
    required TResult Function(RemoveFavorite value) removeFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFavorites value)? getFavorites,
    TResult? Function(AddFavorite value)? addFavorite,
    TResult? Function(RemoveFavorite value)? removeFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFavorites value)? getFavorites,
    TResult Function(AddFavorite value)? addFavorite,
    TResult Function(RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FavoritesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetFavoritesImplCopyWith<$Res> {
  factory _$$GetFavoritesImplCopyWith(
          _$GetFavoritesImpl value, $Res Function(_$GetFavoritesImpl) then) =
      __$$GetFavoritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoritesImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$GetFavoritesImpl>
    implements _$$GetFavoritesImplCopyWith<$Res> {
  __$$GetFavoritesImplCopyWithImpl(
      _$GetFavoritesImpl _value, $Res Function(_$GetFavoritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavoritesImpl implements GetFavorites {
  const _$GetFavoritesImpl();

  @override
  String toString() {
    return 'FavoritesEvent.getFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFavorites,
    required TResult Function(String id) addFavorite,
    required TResult Function(String id) removeFavorite,
  }) {
    return getFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFavorites,
    TResult? Function(String id)? addFavorite,
    TResult? Function(String id)? removeFavorite,
  }) {
    return getFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFavorites,
    TResult Function(String id)? addFavorite,
    TResult Function(String id)? removeFavorite,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFavorites value) getFavorites,
    required TResult Function(AddFavorite value) addFavorite,
    required TResult Function(RemoveFavorite value) removeFavorite,
  }) {
    return getFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFavorites value)? getFavorites,
    TResult? Function(AddFavorite value)? addFavorite,
    TResult? Function(RemoveFavorite value)? removeFavorite,
  }) {
    return getFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFavorites value)? getFavorites,
    TResult Function(AddFavorite value)? addFavorite,
    TResult Function(RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (getFavorites != null) {
      return getFavorites(this);
    }
    return orElse();
  }
}

abstract class GetFavorites implements FavoritesEvent {
  const factory GetFavorites() = _$GetFavoritesImpl;
}

/// @nodoc
abstract class _$$AddFavoriteImplCopyWith<$Res> {
  factory _$$AddFavoriteImplCopyWith(
          _$AddFavoriteImpl value, $Res Function(_$AddFavoriteImpl) then) =
      __$$AddFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$AddFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddFavoriteImpl>
    implements _$$AddFavoriteImplCopyWith<$Res> {
  __$$AddFavoriteImplCopyWithImpl(
      _$AddFavoriteImpl _value, $Res Function(_$AddFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddFavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFavoriteImpl implements AddFavorite {
  const _$AddFavoriteImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'FavoritesEvent.addFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      __$$AddFavoriteImplCopyWithImpl<_$AddFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFavorites,
    required TResult Function(String id) addFavorite,
    required TResult Function(String id) removeFavorite,
  }) {
    return addFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFavorites,
    TResult? Function(String id)? addFavorite,
    TResult? Function(String id)? removeFavorite,
  }) {
    return addFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFavorites,
    TResult Function(String id)? addFavorite,
    TResult Function(String id)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFavorites value) getFavorites,
    required TResult Function(AddFavorite value) addFavorite,
    required TResult Function(RemoveFavorite value) removeFavorite,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFavorites value)? getFavorites,
    TResult? Function(AddFavorite value)? addFavorite,
    TResult? Function(RemoveFavorite value)? removeFavorite,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFavorites value)? getFavorites,
    TResult Function(AddFavorite value)? addFavorite,
    TResult Function(RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class AddFavorite implements FavoritesEvent {
  const factory AddFavorite({required final String id}) = _$AddFavoriteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFavoriteImplCopyWith(_$RemoveFavoriteImpl value,
          $Res Function(_$RemoveFavoriteImpl) then) =
      __$$RemoveFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveFavoriteImpl>
    implements _$$RemoveFavoriteImplCopyWith<$Res> {
  __$$RemoveFavoriteImplCopyWithImpl(
      _$RemoveFavoriteImpl _value, $Res Function(_$RemoveFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveFavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteImpl implements RemoveFavorite {
  const _$RemoveFavoriteImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'FavoritesEvent.removeFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      __$$RemoveFavoriteImplCopyWithImpl<_$RemoveFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getFavorites,
    required TResult Function(String id) addFavorite,
    required TResult Function(String id) removeFavorite,
  }) {
    return removeFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getFavorites,
    TResult? Function(String id)? addFavorite,
    TResult? Function(String id)? removeFavorite,
  }) {
    return removeFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getFavorites,
    TResult Function(String id)? addFavorite,
    TResult Function(String id)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetFavorites value) getFavorites,
    required TResult Function(AddFavorite value) addFavorite,
    required TResult Function(RemoveFavorite value) removeFavorite,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetFavorites value)? getFavorites,
    TResult? Function(AddFavorite value)? addFavorite,
    TResult? Function(RemoveFavorite value)? removeFavorite,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetFavorites value)? getFavorites,
    TResult Function(AddFavorite value)? addFavorite,
    TResult Function(RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveFavorite implements FavoritesEvent {
  const factory RemoveFavorite({required final String id}) =
      _$RemoveFavoriteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  Tuple2<FinanceCalculators, int>? get favories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({Tuple2<FinanceCalculators, int>? favories});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favories = freezed,
  }) {
    return _then(_value.copyWith(
      favories: freezed == favories
          ? _value.favories
          : favories // ignore: cast_nullable_to_non_nullable
              as Tuple2<FinanceCalculators, int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesStateImplCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$FavoritesStateImplCopyWith(_$FavoritesStateImpl value,
          $Res Function(_$FavoritesStateImpl) then) =
      __$$FavoritesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tuple2<FinanceCalculators, int>? favories});
}

/// @nodoc
class __$$FavoritesStateImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateImpl>
    implements _$$FavoritesStateImplCopyWith<$Res> {
  __$$FavoritesStateImplCopyWithImpl(
      _$FavoritesStateImpl _value, $Res Function(_$FavoritesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favories = freezed,
  }) {
    return _then(_$FavoritesStateImpl(
      favories: freezed == favories
          ? _value.favories
          : favories // ignore: cast_nullable_to_non_nullable
              as Tuple2<FinanceCalculators, int>?,
    ));
  }
}

/// @nodoc

class _$FavoritesStateImpl implements _FavoritesState {
  const _$FavoritesStateImpl({this.favories});

  @override
  final Tuple2<FinanceCalculators, int>? favories;

  @override
  String toString() {
    return 'FavoritesState(favories: $favories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateImpl &&
            (identical(other.favories, favories) ||
                other.favories == favories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      __$$FavoritesStateImplCopyWithImpl<_$FavoritesStateImpl>(
          this, _$identity);
}

abstract class _FavoritesState implements FavoritesState {
  const factory _FavoritesState(
      {final Tuple2<FinanceCalculators, int>? favories}) = _$FavoritesStateImpl;

  @override
  Tuple2<FinanceCalculators, int>? get favories;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesStateImplCopyWith<_$FavoritesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
