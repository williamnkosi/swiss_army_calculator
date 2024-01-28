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

MathCalculator _$MathCalculatorFromJson(Map<String, dynamic> json) {
  return _MathCalculator.fromJson(json);
}

/// @nodoc
mixin _$MathCalculator {
  String get name => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MathCalculatorCopyWith<MathCalculator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MathCalculatorCopyWith<$Res> {
  factory $MathCalculatorCopyWith(
          MathCalculator value, $Res Function(MathCalculator) then) =
      _$MathCalculatorCopyWithImpl<$Res, MathCalculator>;
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class _$MathCalculatorCopyWithImpl<$Res, $Val extends MathCalculator>
    implements $MathCalculatorCopyWith<$Res> {
  _$MathCalculatorCopyWithImpl(this._value, this._then);

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
abstract class _$$MathCalculatorImplCopyWith<$Res>
    implements $MathCalculatorCopyWith<$Res> {
  factory _$$MathCalculatorImplCopyWith(_$MathCalculatorImpl value,
          $Res Function(_$MathCalculatorImpl) then) =
      __$$MathCalculatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class __$$MathCalculatorImplCopyWithImpl<$Res>
    extends _$MathCalculatorCopyWithImpl<$Res, _$MathCalculatorImpl>
    implements _$$MathCalculatorImplCopyWith<$Res> {
  __$$MathCalculatorImplCopyWithImpl(
      _$MathCalculatorImpl _value, $Res Function(_$MathCalculatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
  }) {
    return _then(_$MathCalculatorImpl(
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
class _$MathCalculatorImpl implements _MathCalculator {
  const _$MathCalculatorImpl(
      {required this.name,
      required this.shortDescription,
      required this.fullDescription});

  factory _$MathCalculatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MathCalculatorImplFromJson(json);

  @override
  final String name;
  @override
  final String shortDescription;
  @override
  final String fullDescription;

  @override
  String toString() {
    return 'MathCalculator(name: $name, shortDescription: $shortDescription, fullDescription: $fullDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MathCalculatorImpl &&
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
  _$$MathCalculatorImplCopyWith<_$MathCalculatorImpl> get copyWith =>
      __$$MathCalculatorImplCopyWithImpl<_$MathCalculatorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MathCalculatorImplToJson(
      this,
    );
  }
}

abstract class _MathCalculator implements MathCalculator {
  const factory _MathCalculator(
      {required final String name,
      required final String shortDescription,
      required final String fullDescription}) = _$MathCalculatorImpl;

  factory _MathCalculator.fromJson(Map<String, dynamic> json) =
      _$MathCalculatorImpl.fromJson;

  @override
  String get name;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  @JsonKey(ignore: true)
  _$$MathCalculatorImplCopyWith<_$MathCalculatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversionCalculator _$ConversionCalculatorFromJson(Map<String, dynamic> json) {
  return _ConversionCalculator.fromJson(json);
}

/// @nodoc
mixin _$ConversionCalculator {
  String get name => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversionCalculatorCopyWith<ConversionCalculator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversionCalculatorCopyWith<$Res> {
  factory $ConversionCalculatorCopyWith(ConversionCalculator value,
          $Res Function(ConversionCalculator) then) =
      _$ConversionCalculatorCopyWithImpl<$Res, ConversionCalculator>;
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class _$ConversionCalculatorCopyWithImpl<$Res,
        $Val extends ConversionCalculator>
    implements $ConversionCalculatorCopyWith<$Res> {
  _$ConversionCalculatorCopyWithImpl(this._value, this._then);

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
abstract class _$$ConversionCalculatorImplCopyWith<$Res>
    implements $ConversionCalculatorCopyWith<$Res> {
  factory _$$ConversionCalculatorImplCopyWith(_$ConversionCalculatorImpl value,
          $Res Function(_$ConversionCalculatorImpl) then) =
      __$$ConversionCalculatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class __$$ConversionCalculatorImplCopyWithImpl<$Res>
    extends _$ConversionCalculatorCopyWithImpl<$Res, _$ConversionCalculatorImpl>
    implements _$$ConversionCalculatorImplCopyWith<$Res> {
  __$$ConversionCalculatorImplCopyWithImpl(_$ConversionCalculatorImpl _value,
      $Res Function(_$ConversionCalculatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
  }) {
    return _then(_$ConversionCalculatorImpl(
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
class _$ConversionCalculatorImpl implements _ConversionCalculator {
  const _$ConversionCalculatorImpl(
      {required this.name,
      required this.shortDescription,
      required this.fullDescription});

  factory _$ConversionCalculatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversionCalculatorImplFromJson(json);

  @override
  final String name;
  @override
  final String shortDescription;
  @override
  final String fullDescription;

  @override
  String toString() {
    return 'ConversionCalculator(name: $name, shortDescription: $shortDescription, fullDescription: $fullDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversionCalculatorImpl &&
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
  _$$ConversionCalculatorImplCopyWith<_$ConversionCalculatorImpl>
      get copyWith =>
          __$$ConversionCalculatorImplCopyWithImpl<_$ConversionCalculatorImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversionCalculatorImplToJson(
      this,
    );
  }
}

abstract class _ConversionCalculator implements ConversionCalculator {
  const factory _ConversionCalculator(
      {required final String name,
      required final String shortDescription,
      required final String fullDescription}) = _$ConversionCalculatorImpl;

  factory _ConversionCalculator.fromJson(Map<String, dynamic> json) =
      _$ConversionCalculatorImpl.fromJson;

  @override
  String get name;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  @JsonKey(ignore: true)
  _$$ConversionCalculatorImplCopyWith<_$ConversionCalculatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DateAndTimeCalculator _$DateAndTimeCalculatorFromJson(
    Map<String, dynamic> json) {
  return _DateAndTimeCalculator.fromJson(json);
}

/// @nodoc
mixin _$DateAndTimeCalculator {
  String get name => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get fullDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateAndTimeCalculatorCopyWith<DateAndTimeCalculator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateAndTimeCalculatorCopyWith<$Res> {
  factory $DateAndTimeCalculatorCopyWith(DateAndTimeCalculator value,
          $Res Function(DateAndTimeCalculator) then) =
      _$DateAndTimeCalculatorCopyWithImpl<$Res, DateAndTimeCalculator>;
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class _$DateAndTimeCalculatorCopyWithImpl<$Res,
        $Val extends DateAndTimeCalculator>
    implements $DateAndTimeCalculatorCopyWith<$Res> {
  _$DateAndTimeCalculatorCopyWithImpl(this._value, this._then);

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
abstract class _$$DateAndTimeCalculatorImplCopyWith<$Res>
    implements $DateAndTimeCalculatorCopyWith<$Res> {
  factory _$$DateAndTimeCalculatorImplCopyWith(
          _$DateAndTimeCalculatorImpl value,
          $Res Function(_$DateAndTimeCalculatorImpl) then) =
      __$$DateAndTimeCalculatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String shortDescription, String fullDescription});
}

/// @nodoc
class __$$DateAndTimeCalculatorImplCopyWithImpl<$Res>
    extends _$DateAndTimeCalculatorCopyWithImpl<$Res,
        _$DateAndTimeCalculatorImpl>
    implements _$$DateAndTimeCalculatorImplCopyWith<$Res> {
  __$$DateAndTimeCalculatorImplCopyWithImpl(_$DateAndTimeCalculatorImpl _value,
      $Res Function(_$DateAndTimeCalculatorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortDescription = null,
    Object? fullDescription = null,
  }) {
    return _then(_$DateAndTimeCalculatorImpl(
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
class _$DateAndTimeCalculatorImpl implements _DateAndTimeCalculator {
  const _$DateAndTimeCalculatorImpl(
      {required this.name,
      required this.shortDescription,
      required this.fullDescription});

  factory _$DateAndTimeCalculatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateAndTimeCalculatorImplFromJson(json);

  @override
  final String name;
  @override
  final String shortDescription;
  @override
  final String fullDescription;

  @override
  String toString() {
    return 'DateAndTimeCalculator(name: $name, shortDescription: $shortDescription, fullDescription: $fullDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateAndTimeCalculatorImpl &&
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
  _$$DateAndTimeCalculatorImplCopyWith<_$DateAndTimeCalculatorImpl>
      get copyWith => __$$DateAndTimeCalculatorImplCopyWithImpl<
          _$DateAndTimeCalculatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateAndTimeCalculatorImplToJson(
      this,
    );
  }
}

abstract class _DateAndTimeCalculator implements DateAndTimeCalculator {
  const factory _DateAndTimeCalculator(
      {required final String name,
      required final String shortDescription,
      required final String fullDescription}) = _$DateAndTimeCalculatorImpl;

  factory _DateAndTimeCalculator.fromJson(Map<String, dynamic> json) =
      _$DateAndTimeCalculatorImpl.fromJson;

  @override
  String get name;
  @override
  String get shortDescription;
  @override
  String get fullDescription;
  @override
  @JsonKey(ignore: true)
  _$$DateAndTimeCalculatorImplCopyWith<_$DateAndTimeCalculatorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
