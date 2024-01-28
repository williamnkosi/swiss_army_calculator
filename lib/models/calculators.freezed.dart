// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculators.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinancialCalculator _$FinancialCalculatorFromJson(Map<String, dynamic> json) {
  return _FinancialCalculator.fromJson(json);
}

/// @nodoc
mixin _$FinancialCalculator {
  String get name => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinancialCalculatorCopyWith<FinancialCalculator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialCalculatorCopyWith<$Res> {
  factory $FinancialCalculatorCopyWith(
          FinancialCalculator value, $Res Function(FinancialCalculator) then) =
      _$FinancialCalculatorCopyWithImpl<$Res, FinancialCalculator>;
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class _$FinancialCalculatorCopyWithImpl<$Res, $Val extends FinancialCalculator>
    implements $FinancialCalculatorCopyWith<$Res> {
  _$FinancialCalculatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FinancialCalculatorImplCopyWith<$Res>
    implements $FinancialCalculatorCopyWith<$Res> {
  factory _$$FinancialCalculatorImplCopyWith(_$FinancialCalculatorImpl value,
          $Res Function(_$FinancialCalculatorImpl) then) =
      __$$FinancialCalculatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class __$$FinancialCalculatorImplCopyWithImpl<$Res>
    extends _$FinancialCalculatorCopyWithImpl<$Res, _$FinancialCalculatorImpl>
    implements _$$FinancialCalculatorImplCopyWith<$Res> {
  __$$FinancialCalculatorImplCopyWithImpl(_$FinancialCalculatorImpl _value,
      $Res Function(_$FinancialCalculatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
  }) {
    return _then(_$FinancialCalculatorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FinancialCalculatorImpl implements _FinancialCalculator {
  const _$FinancialCalculatorImpl(
      {required this.name,
      required this.shortDescription,
      required this.fullDescription});

  factory _$FinancialCalculatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinancialCalculatorImplFromJson(json);

  @override
  final String name;
  @override
  final String shortDescription;
  @override
  final String fullDescription;

  @override
  String toString() {
    return 'FinancialCalculator(name: $name, shortDescription: $shortDescription, fullDescription: $fullDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinancialCalculatorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, shortDescription, fullDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FinancialCalculatorImplCopyWith<_$FinancialCalculatorImpl> get copyWith =>
      __$$FinancialCalculatorImplCopyWithImpl<_$FinancialCalculatorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinancialCalculatorImplToJson(
      this,
    );
  }
}

abstract class _FinancialCalculator implements FinancialCalculator {
  const factory _FinancialCalculator(
      {required final String name,
      required final String shortDescription,
      required final String fullDescription}) = _$FinancialCalculatorImpl;

  factory _FinancialCalculator.fromJson(Map<String, dynamic> json) =
      _$FinancialCalculatorImpl.fromJson;

  @override
  String get name;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  @JsonKey(ignore: true)
  _$$FinancialCalculatorImplCopyWith<_$FinancialCalculatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HealthCalculator _$HealthCalculatorFromJson(Map<String, dynamic> json) {
  return _HealthCalculator.fromJson(json);
}

/// @nodoc
mixin _$HealthCalculator {
  String get name => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HealthCalculatorCopyWith<HealthCalculator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthCalculatorCopyWith<$Res> {
  factory $HealthCalculatorCopyWith(
          HealthCalculator value, $Res Function(HealthCalculator) then) =
      _$HealthCalculatorCopyWithImpl<$Res, HealthCalculator>;
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class _$HealthCalculatorCopyWithImpl<$Res, $Val extends HealthCalculator>
    implements $HealthCalculatorCopyWith<$Res> {
  _$HealthCalculatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HealthCalculatorImplCopyWith<$Res>
    implements $HealthCalculatorCopyWith<$Res> {
  factory _$$HealthCalculatorImplCopyWith(_$HealthCalculatorImpl value,
          $Res Function(_$HealthCalculatorImpl) then) =
      __$$HealthCalculatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class __$$HealthCalculatorImplCopyWithImpl<$Res>
    extends _$HealthCalculatorCopyWithImpl<$Res, _$HealthCalculatorImpl>
    implements _$$HealthCalculatorImplCopyWith<$Res> {
  __$$HealthCalculatorImplCopyWithImpl(_$HealthCalculatorImpl _value,
      $Res Function(_$HealthCalculatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
  }) {
    return _then(_$HealthCalculatorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      fullDescription: null == fullDescription
          ? _value.fullDescription
          : fullDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HealthCalculatorImpl implements _HealthCalculator {
  const _$HealthCalculatorImpl(
      {required this.name,
      required this.shortDescription,
      required this.fullDescription});

  factory _$HealthCalculatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$HealthCalculatorImplFromJson(json);

  @override
  final String name;
  @override
  final String shortDescription;
  @override
  final String fullDescription;

  @override
  String toString() {
    return 'HealthCalculator(name: $name, shortDescription: $shortDescription, fullDescription: $fullDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthCalculatorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.fullDescription, fullDescription) ||
                other.fullDescription == fullDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, shortDescription, fullDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthCalculatorImplCopyWith<_$HealthCalculatorImpl> get copyWith =>
      __$$HealthCalculatorImplCopyWithImpl<_$HealthCalculatorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HealthCalculatorImplToJson(
      this,
    );
  }
}

abstract class _HealthCalculator implements HealthCalculator {
  const factory _HealthCalculator(
      {required final String name,
      required final String shortDescription,
      required final String fullDescription}) = _$HealthCalculatorImpl;

  factory _HealthCalculator.fromJson(Map<String, dynamic> json) =
      _$HealthCalculatorImpl.fromJson;

  @override
  String get name;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  @JsonKey(ignore: true)
  _$$HealthCalculatorImplCopyWith<_$HealthCalculatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
