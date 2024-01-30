// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basal_metabolic_rate_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BasalMetabolicRatePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateBMREvent,
    TResult? Function()? toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateBMREvent,
    TResult Function()? toggleUnitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasalMetabolicRateBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasalMetabolicRatePageEventCopyWith<$Res> {
  factory $BasalMetabolicRatePageEventCopyWith(
          BasalMetabolicRatePageEvent value,
          $Res Function(BasalMetabolicRatePageEvent) then) =
      _$BasalMetabolicRatePageEventCopyWithImpl<$Res,
          BasalMetabolicRatePageEvent>;
}

/// @nodoc
class _$BasalMetabolicRatePageEventCopyWithImpl<$Res,
        $Val extends BasalMetabolicRatePageEvent>
    implements $BasalMetabolicRatePageEventCopyWith<$Res> {
  _$BasalMetabolicRatePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BasalMetabolicRateBlocStartedImplCopyWith<$Res> {
  factory _$$BasalMetabolicRateBlocStartedImplCopyWith(
          _$BasalMetabolicRateBlocStartedImpl value,
          $Res Function(_$BasalMetabolicRateBlocStartedImpl) then) =
      __$$BasalMetabolicRateBlocStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HealthCalculator calculator});

  $HealthCalculatorCopyWith<$Res> get calculator;
}

/// @nodoc
class __$$BasalMetabolicRateBlocStartedImplCopyWithImpl<$Res>
    extends _$BasalMetabolicRatePageEventCopyWithImpl<$Res,
        _$BasalMetabolicRateBlocStartedImpl>
    implements _$$BasalMetabolicRateBlocStartedImplCopyWith<$Res> {
  __$$BasalMetabolicRateBlocStartedImplCopyWithImpl(
      _$BasalMetabolicRateBlocStartedImpl _value,
      $Res Function(_$BasalMetabolicRateBlocStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculator = null,
  }) {
    return _then(_$BasalMetabolicRateBlocStartedImpl(
      null == calculator
          ? _value.calculator
          : calculator // ignore: cast_nullable_to_non_nullable
              as HealthCalculator,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $HealthCalculatorCopyWith<$Res> get calculator {
    return $HealthCalculatorCopyWith<$Res>(_value.calculator, (value) {
      return _then(_value.copyWith(calculator: value));
    });
  }
}

/// @nodoc

class _$BasalMetabolicRateBlocStartedImpl
    implements BasalMetabolicRateBlocStarted {
  const _$BasalMetabolicRateBlocStartedImpl(this.calculator);

  @override
  final HealthCalculator calculator;

  @override
  String toString() {
    return 'BasalMetabolicRatePageEvent.bodyMassIndexBlocStarted(calculator: $calculator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasalMetabolicRateBlocStartedImpl &&
            (identical(other.calculator, calculator) ||
                other.calculator == calculator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calculator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasalMetabolicRateBlocStartedImplCopyWith<
          _$BasalMetabolicRateBlocStartedImpl>
      get copyWith => __$$BasalMetabolicRateBlocStartedImplCopyWithImpl<
          _$BasalMetabolicRateBlocStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted(calculator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateBMREvent,
    TResult? Function()? toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted?.call(calculator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateBMREvent,
    TResult Function()? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (bodyMassIndexBlocStarted != null) {
      return bodyMassIndexBlocStarted(calculator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasalMetabolicRateBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (bodyMassIndexBlocStarted != null) {
      return bodyMassIndexBlocStarted(this);
    }
    return orElse();
  }
}

abstract class BasalMetabolicRateBlocStarted
    implements BasalMetabolicRatePageEvent {
  const factory BasalMetabolicRateBlocStarted(
      final HealthCalculator calculator) = _$BasalMetabolicRateBlocStartedImpl;

  HealthCalculator get calculator;
  @JsonKey(ignore: true)
  _$$BasalMetabolicRateBlocStartedImplCopyWith<
          _$BasalMetabolicRateBlocStartedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckFormStateEventImplCopyWith<$Res> {
  factory _$$CheckFormStateEventImplCopyWith(_$CheckFormStateEventImpl value,
          $Res Function(_$CheckFormStateEventImpl) then) =
      __$$CheckFormStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckFormStateEventImplCopyWithImpl<$Res>
    extends _$BasalMetabolicRatePageEventCopyWithImpl<$Res,
        _$CheckFormStateEventImpl>
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
    return 'BasalMetabolicRatePageEvent.checkFormStateEvent()';
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
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleUnitEvent,
  }) {
    return checkFormStateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateBMREvent,
    TResult? Function()? toggleUnitEvent,
  }) {
    return checkFormStateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateBMREvent,
    TResult Function()? toggleUnitEvent,
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
    required TResult Function(BasalMetabolicRateBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return checkFormStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return checkFormStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent(this);
    }
    return orElse();
  }
}

abstract class CheckFormStateEvent implements BasalMetabolicRatePageEvent {
  const factory CheckFormStateEvent() = _$CheckFormStateEventImpl;
}

/// @nodoc
abstract class _$$CalculaBMREventImplCopyWith<$Res> {
  factory _$$CalculaBMREventImplCopyWith(_$CalculaBMREventImpl value,
          $Res Function(_$CalculaBMREventImpl) then) =
      __$$CalculaBMREventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculaBMREventImplCopyWithImpl<$Res>
    extends _$BasalMetabolicRatePageEventCopyWithImpl<$Res,
        _$CalculaBMREventImpl> implements _$$CalculaBMREventImplCopyWith<$Res> {
  __$$CalculaBMREventImplCopyWithImpl(
      _$CalculaBMREventImpl _value, $Res Function(_$CalculaBMREventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculaBMREventImpl implements CalculaBMREvent {
  const _$CalculaBMREventImpl();

  @override
  String toString() {
    return 'BasalMetabolicRatePageEvent.calculateBMREvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculaBMREventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleUnitEvent,
  }) {
    return calculateBMREvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateBMREvent,
    TResult? Function()? toggleUnitEvent,
  }) {
    return calculateBMREvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateBMREvent,
    TResult Function()? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (calculateBMREvent != null) {
      return calculateBMREvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasalMetabolicRateBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return calculateBMREvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return calculateBMREvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (calculateBMREvent != null) {
      return calculateBMREvent(this);
    }
    return orElse();
  }
}

abstract class CalculaBMREvent implements BasalMetabolicRatePageEvent {
  const factory CalculaBMREvent() = _$CalculaBMREventImpl;
}

/// @nodoc
abstract class _$$ToggleUnitEventImplCopyWith<$Res> {
  factory _$$ToggleUnitEventImplCopyWith(_$ToggleUnitEventImpl value,
          $Res Function(_$ToggleUnitEventImpl) then) =
      __$$ToggleUnitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleUnitEventImplCopyWithImpl<$Res>
    extends _$BasalMetabolicRatePageEventCopyWithImpl<$Res,
        _$ToggleUnitEventImpl> implements _$$ToggleUnitEventImplCopyWith<$Res> {
  __$$ToggleUnitEventImplCopyWithImpl(
      _$ToggleUnitEventImpl _value, $Res Function(_$ToggleUnitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleUnitEventImpl implements ToggleUnitEvent {
  const _$ToggleUnitEventImpl();

  @override
  String toString() {
    return 'BasalMetabolicRatePageEvent.toggleUnitEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleUnitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleUnitEvent,
  }) {
    return toggleUnitEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateBMREvent,
    TResult? Function()? toggleUnitEvent,
  }) {
    return toggleUnitEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateBMREvent,
    TResult Function()? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (toggleUnitEvent != null) {
      return toggleUnitEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BasalMetabolicRateBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return toggleUnitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return toggleUnitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BasalMetabolicRateBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (toggleUnitEvent != null) {
      return toggleUnitEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleUnitEvent implements BasalMetabolicRatePageEvent {
  const factory ToggleUnitEvent() = _$ToggleUnitEventImpl;
}

/// @nodoc
mixin _$BasalMetabolicRatePageState {
  GlobalKey<FormBuilderState> get formKey => throw _privateConstructorUsedError;
  HealthCalculator get calculatorData => throw _privateConstructorUsedError;
  Units get unit => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  bool get isDiabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasalMetabolicRatePageStateCopyWith<BasalMetabolicRatePageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasalMetabolicRatePageStateCopyWith<$Res> {
  factory $BasalMetabolicRatePageStateCopyWith(
          BasalMetabolicRatePageState value,
          $Res Function(BasalMetabolicRatePageState) then) =
      _$BasalMetabolicRatePageStateCopyWithImpl<$Res,
          BasalMetabolicRatePageState>;
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      HealthCalculator calculatorData,
      Units unit,
      double result,
      bool isDiabled});

  $HealthCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class _$BasalMetabolicRatePageStateCopyWithImpl<$Res,
        $Val extends BasalMetabolicRatePageState>
    implements $BasalMetabolicRatePageStateCopyWith<$Res> {
  _$BasalMetabolicRatePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? unit = null,
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
              as HealthCalculator,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Units,
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
  $HealthCalculatorCopyWith<$Res> get calculatorData {
    return $HealthCalculatorCopyWith<$Res>(_value.calculatorData, (value) {
      return _then(_value.copyWith(calculatorData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasalMetabolicRatePageStateImplCopyWith<$Res>
    implements $BasalMetabolicRatePageStateCopyWith<$Res> {
  factory _$$BasalMetabolicRatePageStateImplCopyWith(
          _$BasalMetabolicRatePageStateImpl value,
          $Res Function(_$BasalMetabolicRatePageStateImpl) then) =
      __$$BasalMetabolicRatePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      HealthCalculator calculatorData,
      Units unit,
      double result,
      bool isDiabled});

  @override
  $HealthCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class __$$BasalMetabolicRatePageStateImplCopyWithImpl<$Res>
    extends _$BasalMetabolicRatePageStateCopyWithImpl<$Res,
        _$BasalMetabolicRatePageStateImpl>
    implements _$$BasalMetabolicRatePageStateImplCopyWith<$Res> {
  __$$BasalMetabolicRatePageStateImplCopyWithImpl(
      _$BasalMetabolicRatePageStateImpl _value,
      $Res Function(_$BasalMetabolicRatePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? unit = null,
    Object? result = null,
    Object? isDiabled = null,
  }) {
    return _then(_$BasalMetabolicRatePageStateImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      calculatorData: null == calculatorData
          ? _value.calculatorData
          : calculatorData // ignore: cast_nullable_to_non_nullable
              as HealthCalculator,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Units,
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

class _$BasalMetabolicRatePageStateImpl
    implements _BasalMetabolicRatePageState {
  const _$BasalMetabolicRatePageStateImpl(
      {required this.formKey,
      required this.calculatorData,
      this.unit = Units.imperial,
      this.result = 0,
      this.isDiabled = true});

  @override
  final GlobalKey<FormBuilderState> formKey;
  @override
  final HealthCalculator calculatorData;
  @override
  @JsonKey()
  final Units unit;
  @override
  @JsonKey()
  final double result;
  @override
  @JsonKey()
  final bool isDiabled;

  @override
  String toString() {
    return 'BasalMetabolicRatePageState(formKey: $formKey, calculatorData: $calculatorData, unit: $unit, result: $result, isDiabled: $isDiabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasalMetabolicRatePageStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.calculatorData, calculatorData) ||
                other.calculatorData == calculatorData) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isDiabled, isDiabled) ||
                other.isDiabled == isDiabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, formKey, calculatorData, unit, result, isDiabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasalMetabolicRatePageStateImplCopyWith<_$BasalMetabolicRatePageStateImpl>
      get copyWith => __$$BasalMetabolicRatePageStateImplCopyWithImpl<
          _$BasalMetabolicRatePageStateImpl>(this, _$identity);
}

abstract class _BasalMetabolicRatePageState
    implements BasalMetabolicRatePageState {
  const factory _BasalMetabolicRatePageState(
      {required final GlobalKey<FormBuilderState> formKey,
      required final HealthCalculator calculatorData,
      final Units unit,
      final double result,
      final bool isDiabled}) = _$BasalMetabolicRatePageStateImpl;

  @override
  GlobalKey<FormBuilderState> get formKey;
  @override
  HealthCalculator get calculatorData;
  @override
  Units get unit;
  @override
  double get result;
  @override
  bool get isDiabled;
  @override
  @JsonKey(ignore: true)
  _$$BasalMetabolicRatePageStateImplCopyWith<_$BasalMetabolicRatePageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
