// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_interest_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimpleInterestPageState {
  GlobalKey<FormBuilderState> get formKey => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  dynamic get isExpanded => throw _privateConstructorUsedError;
  dynamic get isDiabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimpleInterestPageStateCopyWith<SimpleInterestPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleInterestPageStateCopyWith<$Res> {
  factory $SimpleInterestPageStateCopyWith(SimpleInterestPageState value,
          $Res Function(SimpleInterestPageState) then) =
      _$SimpleInterestPageStateCopyWithImpl<$Res, SimpleInterestPageState>;
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      double result,
      dynamic isExpanded,
      dynamic isDiabled});
}

/// @nodoc
class _$SimpleInterestPageStateCopyWithImpl<$Res,
        $Val extends SimpleInterestPageState>
    implements $SimpleInterestPageStateCopyWith<$Res> {
  _$SimpleInterestPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? result = null,
    Object? isExpanded = freezed,
    Object? isDiabled = freezed,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
      isExpanded: freezed == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isDiabled: freezed == isDiabled
          ? _value.isDiabled
          : isDiabled // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleInterestPageStateImplCopyWith<$Res>
    implements $SimpleInterestPageStateCopyWith<$Res> {
  factory _$$SimpleInterestPageStateImplCopyWith(
          _$SimpleInterestPageStateImpl value,
          $Res Function(_$SimpleInterestPageStateImpl) then) =
      __$$SimpleInterestPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      double result,
      dynamic isExpanded,
      dynamic isDiabled});
}

/// @nodoc
class __$$SimpleInterestPageStateImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageStateCopyWithImpl<$Res,
        _$SimpleInterestPageStateImpl>
    implements _$$SimpleInterestPageStateImplCopyWith<$Res> {
  __$$SimpleInterestPageStateImplCopyWithImpl(
      _$SimpleInterestPageStateImpl _value,
      $Res Function(_$SimpleInterestPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? result = null,
    Object? isExpanded = freezed,
    Object? isDiabled = freezed,
  }) {
    return _then(_$SimpleInterestPageStateImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
      isExpanded: freezed == isExpanded ? _value.isExpanded! : isExpanded,
      isDiabled: freezed == isDiabled ? _value.isDiabled! : isDiabled,
    ));
  }
}

/// @nodoc

class _$SimpleInterestPageStateImpl implements _SimpleInterestPageState {
  const _$SimpleInterestPageStateImpl(
      {required this.formKey,
      this.result = 0,
      this.isExpanded = false,
      this.isDiabled = true});

  @override
  final GlobalKey<FormBuilderState> formKey;
  @override
  @JsonKey()
  final double result;
  @override
  @JsonKey()
  final dynamic isExpanded;
  @override
  @JsonKey()
  final dynamic isDiabled;

  @override
  String toString() {
    return 'SimpleInterestPageState(formKey: $formKey, result: $result, isExpanded: $isExpanded, isDiabled: $isDiabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleInterestPageStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded) &&
            const DeepCollectionEquality().equals(other.isDiabled, isDiabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formKey,
      result,
      const DeepCollectionEquality().hash(isExpanded),
      const DeepCollectionEquality().hash(isDiabled));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleInterestPageStateImplCopyWith<_$SimpleInterestPageStateImpl>
      get copyWith => __$$SimpleInterestPageStateImplCopyWithImpl<
          _$SimpleInterestPageStateImpl>(this, _$identity);
}

abstract class _SimpleInterestPageState implements SimpleInterestPageState {
  const factory _SimpleInterestPageState(
      {required final GlobalKey<FormBuilderState> formKey,
      final double result,
      final dynamic isExpanded,
      final dynamic isDiabled}) = _$SimpleInterestPageStateImpl;

  @override
  GlobalKey<FormBuilderState> get formKey;
  @override
  double get result;
  @override
  dynamic get isExpanded;
  @override
  dynamic get isDiabled;
  @override
  @JsonKey(ignore: true)
  _$$SimpleInterestPageStateImplCopyWith<_$SimpleInterestPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
