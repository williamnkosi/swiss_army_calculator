// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'age_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateAndTimeCalculator calculator)
        agePageBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateAgeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateAgeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateAgeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePageBlocStarted value) agePageBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateAgeEvent value) calculateAgeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateAgeEvent value)? calculateAgeEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateAgeEvent value)? calculateAgeEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgePageEventCopyWith<$Res> {
  factory $AgePageEventCopyWith(
          AgePageEvent value, $Res Function(AgePageEvent) then) =
      _$AgePageEventCopyWithImpl<$Res, AgePageEvent>;
}

/// @nodoc
class _$AgePageEventCopyWithImpl<$Res, $Val extends AgePageEvent>
    implements $AgePageEventCopyWith<$Res> {
  _$AgePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AgePageBlocStartedImplCopyWith<$Res> {
  factory _$$AgePageBlocStartedImplCopyWith(_$AgePageBlocStartedImpl value,
          $Res Function(_$AgePageBlocStartedImpl) then) =
      __$$AgePageBlocStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateAndTimeCalculator calculator});

  $DateAndTimeCalculatorCopyWith<$Res> get calculator;
}

/// @nodoc
class __$$AgePageBlocStartedImplCopyWithImpl<$Res>
    extends _$AgePageEventCopyWithImpl<$Res, _$AgePageBlocStartedImpl>
    implements _$$AgePageBlocStartedImplCopyWith<$Res> {
  __$$AgePageBlocStartedImplCopyWithImpl(_$AgePageBlocStartedImpl _value,
      $Res Function(_$AgePageBlocStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculator = null,
  }) {
    return _then(_$AgePageBlocStartedImpl(
      null == calculator
          ? _value.calculator
          : calculator // ignore: cast_nullable_to_non_nullable
              as DateAndTimeCalculator,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DateAndTimeCalculatorCopyWith<$Res> get calculator {
    return $DateAndTimeCalculatorCopyWith<$Res>(_value.calculator, (value) {
      return _then(_value.copyWith(calculator: value));
    });
  }
}

/// @nodoc

class _$AgePageBlocStartedImpl implements AgePageBlocStarted {
  const _$AgePageBlocStartedImpl(this.calculator);

  @override
  final DateAndTimeCalculator calculator;

  @override
  String toString() {
    return 'AgePageEvent.agePageBlocStarted(calculator: $calculator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgePageBlocStartedImpl &&
            (identical(other.calculator, calculator) ||
                other.calculator == calculator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calculator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgePageBlocStartedImplCopyWith<_$AgePageBlocStartedImpl> get copyWith =>
      __$$AgePageBlocStartedImplCopyWithImpl<_$AgePageBlocStartedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateAndTimeCalculator calculator)
        agePageBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateAgeEvent,
  }) {
    return agePageBlocStarted(calculator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateAgeEvent,
  }) {
    return agePageBlocStarted?.call(calculator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateAgeEvent,
    required TResult orElse(),
  }) {
    if (agePageBlocStarted != null) {
      return agePageBlocStarted(calculator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePageBlocStarted value) agePageBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateAgeEvent value) calculateAgeEvent,
  }) {
    return agePageBlocStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateAgeEvent value)? calculateAgeEvent,
  }) {
    return agePageBlocStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateAgeEvent value)? calculateAgeEvent,
    required TResult orElse(),
  }) {
    if (agePageBlocStarted != null) {
      return agePageBlocStarted(this);
    }
    return orElse();
  }
}

abstract class AgePageBlocStarted implements AgePageEvent {
  const factory AgePageBlocStarted(final DateAndTimeCalculator calculator) =
      _$AgePageBlocStartedImpl;

  DateAndTimeCalculator get calculator;
  @JsonKey(ignore: true)
  _$$AgePageBlocStartedImplCopyWith<_$AgePageBlocStartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckFormStateEventImplCopyWith<$Res> {
  factory _$$CheckFormStateEventImplCopyWith(_$CheckFormStateEventImpl value,
          $Res Function(_$CheckFormStateEventImpl) then) =
      __$$CheckFormStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckFormStateEventImplCopyWithImpl<$Res>
    extends _$AgePageEventCopyWithImpl<$Res, _$CheckFormStateEventImpl>
    implements _$$CheckFormStateEventImplCopyWith<$Res> {
  __$$CheckFormStateEventImplCopyWithImpl(_$CheckFormStateEventImpl _value,
      $Res Function(_$CheckFormStateEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckFormStateEventImpl implements CheckFormStateEvent {
  const _$CheckFormStateEventImpl();

  @override
  String toString() {
    return 'AgePageEvent.checkFormStateEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckFormStateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateAndTimeCalculator calculator)
        agePageBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateAgeEvent,
  }) {
    return checkFormStateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateAgeEvent,
  }) {
    return checkFormStateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateAgeEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePageBlocStarted value) agePageBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateAgeEvent value) calculateAgeEvent,
  }) {
    return checkFormStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateAgeEvent value)? calculateAgeEvent,
  }) {
    return checkFormStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateAgeEvent value)? calculateAgeEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent(this);
    }
    return orElse();
  }
}

abstract class CheckFormStateEvent implements AgePageEvent {
  const factory CheckFormStateEvent() = _$CheckFormStateEventImpl;
}

/// @nodoc
abstract class _$$CalculateAgeEventImplCopyWith<$Res> {
  factory _$$CalculateAgeEventImplCopyWith(_$CalculateAgeEventImpl value,
          $Res Function(_$CalculateAgeEventImpl) then) =
      __$$CalculateAgeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateAgeEventImplCopyWithImpl<$Res>
    extends _$AgePageEventCopyWithImpl<$Res, _$CalculateAgeEventImpl>
    implements _$$CalculateAgeEventImplCopyWith<$Res> {
  __$$CalculateAgeEventImplCopyWithImpl(_$CalculateAgeEventImpl _value,
      $Res Function(_$CalculateAgeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculateAgeEventImpl implements CalculateAgeEvent {
  const _$CalculateAgeEventImpl();

  @override
  String toString() {
    return 'AgePageEvent.calculateAgeEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculateAgeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateAndTimeCalculator calculator)
        agePageBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateAgeEvent,
  }) {
    return calculateAgeEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateAgeEvent,
  }) {
    return calculateAgeEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateAndTimeCalculator calculator)? agePageBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateAgeEvent,
    required TResult orElse(),
  }) {
    if (calculateAgeEvent != null) {
      return calculateAgeEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePageBlocStarted value) agePageBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateAgeEvent value) calculateAgeEvent,
  }) {
    return calculateAgeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateAgeEvent value)? calculateAgeEvent,
  }) {
    return calculateAgeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePageBlocStarted value)? agePageBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateAgeEvent value)? calculateAgeEvent,
    required TResult orElse(),
  }) {
    if (calculateAgeEvent != null) {
      return calculateAgeEvent(this);
    }
    return orElse();
  }
}

abstract class CalculateAgeEvent implements AgePageEvent {
  const factory CalculateAgeEvent() = _$CalculateAgeEventImpl;
}

/// @nodoc
mixin _$AgePageState {
  GlobalKey<FormBuilderState> get formKey => throw _privateConstructorUsedError;
  DateAndTimeCalculator get calculatorData =>
      throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  bool get isDiabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgePageStateCopyWith<AgePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgePageStateCopyWith<$Res> {
  factory $AgePageStateCopyWith(
          AgePageState value, $Res Function(AgePageState) then) =
      _$AgePageStateCopyWithImpl<$Res, AgePageState>;
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      DateAndTimeCalculator calculatorData,
      double result,
      bool isDiabled});

  $DateAndTimeCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class _$AgePageStateCopyWithImpl<$Res, $Val extends AgePageState>
    implements $AgePageStateCopyWith<$Res> {
  _$AgePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? result = null,
    Object? isDiabled = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      calculatorData: null == calculatorData
          ? _value.calculatorData
          : calculatorData // ignore: cast_nullable_to_non_nullable
              as DateAndTimeCalculator,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
      isDiabled: null == isDiabled
          ? _value.isDiabled
          : isDiabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateAndTimeCalculatorCopyWith<$Res> get calculatorData {
    return $DateAndTimeCalculatorCopyWith<$Res>(_value.calculatorData, (value) {
      return _then(_value.copyWith(calculatorData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgePageStateImplCopyWith<$Res>
    implements $AgePageStateCopyWith<$Res> {
  factory _$$AgePageStateImplCopyWith(
          _$AgePageStateImpl value, $Res Function(_$AgePageStateImpl) then) =
      __$$AgePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      DateAndTimeCalculator calculatorData,
      double result,
      bool isDiabled});

  @override
  $DateAndTimeCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class __$$AgePageStateImplCopyWithImpl<$Res>
    extends _$AgePageStateCopyWithImpl<$Res, _$AgePageStateImpl>
    implements _$$AgePageStateImplCopyWith<$Res> {
  __$$AgePageStateImplCopyWithImpl(
      _$AgePageStateImpl _value, $Res Function(_$AgePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? result = null,
    Object? isDiabled = null,
  }) {
    return _then(_$AgePageStateImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      calculatorData: null == calculatorData
          ? _value.calculatorData
          : calculatorData // ignore: cast_nullable_to_non_nullable
              as DateAndTimeCalculator,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
      isDiabled: null == isDiabled
          ? _value.isDiabled
          : isDiabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AgePageStateImpl implements _AgePageState {
  const _$AgePageStateImpl(
      {required this.formKey,
      required this.calculatorData,
      this.result = 0,
      this.isDiabled = true});

  @override
  final GlobalKey<FormBuilderState> formKey;
  @override
  final DateAndTimeCalculator calculatorData;
  @override
  @JsonKey()
  final double result;
  @override
  @JsonKey()
  final bool isDiabled;

  @override
  String toString() {
    return 'AgePageState(formKey: $formKey, calculatorData: $calculatorData, result: $result, isDiabled: $isDiabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgePageStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.calculatorData, calculatorData) ||
                other.calculatorData == calculatorData) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isDiabled, isDiabled) ||
                other.isDiabled == isDiabled));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, formKey, calculatorData, result, isDiabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgePageStateImplCopyWith<_$AgePageStateImpl> get copyWith =>
      __$$AgePageStateImplCopyWithImpl<_$AgePageStateImpl>(this, _$identity);
}

abstract class _AgePageState implements AgePageState {
  const factory _AgePageState(
      {required final GlobalKey<FormBuilderState> formKey,
      required final DateAndTimeCalculator calculatorData,
      final double result,
      final bool isDiabled}) = _$AgePageStateImpl;

  @override
  GlobalKey<FormBuilderState> get formKey;
  @override
  DateAndTimeCalculator get calculatorData;
  @override
  double get result;
  @override
  bool get isDiabled;
  @override
  @JsonKey(ignore: true)
  _$$AgePageStateImplCopyWith<_$AgePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
