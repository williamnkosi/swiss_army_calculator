// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ideal_weight_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IdealWeightPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        idealWeightBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateIdealWeightEvent,
    required TResult Function() toggleUnitEvent,
    required TResult Function() toggleGenderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateIdealWeightEvent,
    TResult? Function()? toggleUnitEvent,
    TResult? Function()? toggleGenderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateIdealWeightEvent,
    TResult Function()? toggleUnitEvent,
    TResult Function()? toggleGenderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdealWeightBlocStarted value)
        idealWeightBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateIdealWeightEvent value)
        calculateIdealWeightEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdealWeightPageEventCopyWith<$Res> {
  factory $IdealWeightPageEventCopyWith(IdealWeightPageEvent value,
          $Res Function(IdealWeightPageEvent) then) =
      _$IdealWeightPageEventCopyWithImpl<$Res, IdealWeightPageEvent>;
}

/// @nodoc
class _$IdealWeightPageEventCopyWithImpl<$Res,
        $Val extends IdealWeightPageEvent>
    implements $IdealWeightPageEventCopyWith<$Res> {
  _$IdealWeightPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdealWeightBlocStartedImplCopyWith<$Res> {
  factory _$$IdealWeightBlocStartedImplCopyWith(
          _$IdealWeightBlocStartedImpl value,
          $Res Function(_$IdealWeightBlocStartedImpl) then) =
      __$$IdealWeightBlocStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HealthCalculator calculator});

  $HealthCalculatorCopyWith<$Res> get calculator;
}

/// @nodoc
class __$$IdealWeightBlocStartedImplCopyWithImpl<$Res>
    extends _$IdealWeightPageEventCopyWithImpl<$Res,
        _$IdealWeightBlocStartedImpl>
    implements _$$IdealWeightBlocStartedImplCopyWith<$Res> {
  __$$IdealWeightBlocStartedImplCopyWithImpl(
      _$IdealWeightBlocStartedImpl _value,
      $Res Function(_$IdealWeightBlocStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculator = null,
  }) {
    return _then(_$IdealWeightBlocStartedImpl(
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

class _$IdealWeightBlocStartedImpl implements IdealWeightBlocStarted {
  const _$IdealWeightBlocStartedImpl(this.calculator);

  @override
  final HealthCalculator calculator;

  @override
  String toString() {
    return 'IdealWeightPageEvent.idealWeightBlocStarted(calculator: $calculator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdealWeightBlocStartedImpl &&
            (identical(other.calculator, calculator) ||
                other.calculator == calculator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calculator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdealWeightBlocStartedImplCopyWith<_$IdealWeightBlocStartedImpl>
      get copyWith => __$$IdealWeightBlocStartedImplCopyWithImpl<
          _$IdealWeightBlocStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        idealWeightBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateIdealWeightEvent,
    required TResult Function() toggleUnitEvent,
    required TResult Function() toggleGenderEvent,
  }) {
    return idealWeightBlocStarted(calculator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateIdealWeightEvent,
    TResult? Function()? toggleUnitEvent,
    TResult? Function()? toggleGenderEvent,
  }) {
    return idealWeightBlocStarted?.call(calculator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateIdealWeightEvent,
    TResult Function()? toggleUnitEvent,
    TResult Function()? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (idealWeightBlocStarted != null) {
      return idealWeightBlocStarted(calculator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdealWeightBlocStarted value)
        idealWeightBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateIdealWeightEvent value)
        calculateIdealWeightEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
  }) {
    return idealWeightBlocStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
  }) {
    return idealWeightBlocStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (idealWeightBlocStarted != null) {
      return idealWeightBlocStarted(this);
    }
    return orElse();
  }
}

abstract class IdealWeightBlocStarted implements IdealWeightPageEvent {
  const factory IdealWeightBlocStarted(final HealthCalculator calculator) =
      _$IdealWeightBlocStartedImpl;

  HealthCalculator get calculator;
  @JsonKey(ignore: true)
  _$$IdealWeightBlocStartedImplCopyWith<_$IdealWeightBlocStartedImpl>
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
    extends _$IdealWeightPageEventCopyWithImpl<$Res, _$CheckFormStateEventImpl>
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
    return 'IdealWeightPageEvent.checkFormStateEvent()';
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
        idealWeightBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateIdealWeightEvent,
    required TResult Function() toggleUnitEvent,
    required TResult Function() toggleGenderEvent,
  }) {
    return checkFormStateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateIdealWeightEvent,
    TResult? Function()? toggleUnitEvent,
    TResult? Function()? toggleGenderEvent,
  }) {
    return checkFormStateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateIdealWeightEvent,
    TResult Function()? toggleUnitEvent,
    TResult Function()? toggleGenderEvent,
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
    required TResult Function(IdealWeightBlocStarted value)
        idealWeightBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateIdealWeightEvent value)
        calculateIdealWeightEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
  }) {
    return checkFormStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
  }) {
    return checkFormStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent(this);
    }
    return orElse();
  }
}

abstract class CheckFormStateEvent implements IdealWeightPageEvent {
  const factory CheckFormStateEvent() = _$CheckFormStateEventImpl;
}

/// @nodoc
abstract class _$$CalculateIdealWeightEventImplCopyWith<$Res> {
  factory _$$CalculateIdealWeightEventImplCopyWith(
          _$CalculateIdealWeightEventImpl value,
          $Res Function(_$CalculateIdealWeightEventImpl) then) =
      __$$CalculateIdealWeightEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateIdealWeightEventImplCopyWithImpl<$Res>
    extends _$IdealWeightPageEventCopyWithImpl<$Res,
        _$CalculateIdealWeightEventImpl>
    implements _$$CalculateIdealWeightEventImplCopyWith<$Res> {
  __$$CalculateIdealWeightEventImplCopyWithImpl(
      _$CalculateIdealWeightEventImpl _value,
      $Res Function(_$CalculateIdealWeightEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculateIdealWeightEventImpl implements CalculateIdealWeightEvent {
  const _$CalculateIdealWeightEventImpl();

  @override
  String toString() {
    return 'IdealWeightPageEvent.calculateIdealWeightEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateIdealWeightEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        idealWeightBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateIdealWeightEvent,
    required TResult Function() toggleUnitEvent,
    required TResult Function() toggleGenderEvent,
  }) {
    return calculateIdealWeightEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateIdealWeightEvent,
    TResult? Function()? toggleUnitEvent,
    TResult? Function()? toggleGenderEvent,
  }) {
    return calculateIdealWeightEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateIdealWeightEvent,
    TResult Function()? toggleUnitEvent,
    TResult Function()? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (calculateIdealWeightEvent != null) {
      return calculateIdealWeightEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdealWeightBlocStarted value)
        idealWeightBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateIdealWeightEvent value)
        calculateIdealWeightEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
  }) {
    return calculateIdealWeightEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
  }) {
    return calculateIdealWeightEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (calculateIdealWeightEvent != null) {
      return calculateIdealWeightEvent(this);
    }
    return orElse();
  }
}

abstract class CalculateIdealWeightEvent implements IdealWeightPageEvent {
  const factory CalculateIdealWeightEvent() = _$CalculateIdealWeightEventImpl;
}

/// @nodoc
abstract class _$$ToggleUnitEventImplCopyWith<$Res> {
  factory _$$ToggleUnitEventImplCopyWith(_$ToggleUnitEventImpl value,
          $Res Function(_$ToggleUnitEventImpl) then) =
      __$$ToggleUnitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleUnitEventImplCopyWithImpl<$Res>
    extends _$IdealWeightPageEventCopyWithImpl<$Res, _$ToggleUnitEventImpl>
    implements _$$ToggleUnitEventImplCopyWith<$Res> {
  __$$ToggleUnitEventImplCopyWithImpl(
      _$ToggleUnitEventImpl _value, $Res Function(_$ToggleUnitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleUnitEventImpl implements ToggleUnitEvent {
  const _$ToggleUnitEventImpl();

  @override
  String toString() {
    return 'IdealWeightPageEvent.toggleUnitEvent()';
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
        idealWeightBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateIdealWeightEvent,
    required TResult Function() toggleUnitEvent,
    required TResult Function() toggleGenderEvent,
  }) {
    return toggleUnitEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateIdealWeightEvent,
    TResult? Function()? toggleUnitEvent,
    TResult? Function()? toggleGenderEvent,
  }) {
    return toggleUnitEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateIdealWeightEvent,
    TResult Function()? toggleUnitEvent,
    TResult Function()? toggleGenderEvent,
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
    required TResult Function(IdealWeightBlocStarted value)
        idealWeightBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateIdealWeightEvent value)
        calculateIdealWeightEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
  }) {
    return toggleUnitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
  }) {
    return toggleUnitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (toggleUnitEvent != null) {
      return toggleUnitEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleUnitEvent implements IdealWeightPageEvent {
  const factory ToggleUnitEvent() = _$ToggleUnitEventImpl;
}

/// @nodoc
abstract class _$$ToggleGenderEventImplCopyWith<$Res> {
  factory _$$ToggleGenderEventImplCopyWith(_$ToggleGenderEventImpl value,
          $Res Function(_$ToggleGenderEventImpl) then) =
      __$$ToggleGenderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleGenderEventImplCopyWithImpl<$Res>
    extends _$IdealWeightPageEventCopyWithImpl<$Res, _$ToggleGenderEventImpl>
    implements _$$ToggleGenderEventImplCopyWith<$Res> {
  __$$ToggleGenderEventImplCopyWithImpl(_$ToggleGenderEventImpl _value,
      $Res Function(_$ToggleGenderEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleGenderEventImpl implements ToggleGenderEvent {
  const _$ToggleGenderEventImpl();

  @override
  String toString() {
    return 'IdealWeightPageEvent.toggleGenderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleGenderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        idealWeightBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateIdealWeightEvent,
    required TResult Function() toggleUnitEvent,
    required TResult Function() toggleGenderEvent,
  }) {
    return toggleGenderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateIdealWeightEvent,
    TResult? Function()? toggleUnitEvent,
    TResult? Function()? toggleGenderEvent,
  }) {
    return toggleGenderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? idealWeightBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateIdealWeightEvent,
    TResult Function()? toggleUnitEvent,
    TResult Function()? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (toggleGenderEvent != null) {
      return toggleGenderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdealWeightBlocStarted value)
        idealWeightBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateIdealWeightEvent value)
        calculateIdealWeightEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
  }) {
    return toggleGenderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
  }) {
    return toggleGenderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdealWeightBlocStarted value)? idealWeightBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateIdealWeightEvent value)?
        calculateIdealWeightEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    required TResult orElse(),
  }) {
    if (toggleGenderEvent != null) {
      return toggleGenderEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleGenderEvent implements IdealWeightPageEvent {
  const factory ToggleGenderEvent() = _$ToggleGenderEventImpl;
}

/// @nodoc
mixin _$IdealWeightPageState {
  GlobalKey<FormBuilderState> get formKey => throw _privateConstructorUsedError;
  HealthCalculator get calculatorData => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  Units get unit => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  bool get isDiabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdealWeightPageStateCopyWith<IdealWeightPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdealWeightPageStateCopyWith<$Res> {
  factory $IdealWeightPageStateCopyWith(IdealWeightPageState value,
          $Res Function(IdealWeightPageState) then) =
      _$IdealWeightPageStateCopyWithImpl<$Res, IdealWeightPageState>;
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      HealthCalculator calculatorData,
      Gender gender,
      Units unit,
      double result,
      bool isDiabled});

  $HealthCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class _$IdealWeightPageStateCopyWithImpl<$Res,
        $Val extends IdealWeightPageState>
    implements $IdealWeightPageStateCopyWith<$Res> {
  _$IdealWeightPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? gender = freezed,
    Object? unit = freezed,
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      unit: freezed == unit
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
abstract class _$$IdealWeightPageStateImplCopyWith<$Res>
    implements $IdealWeightPageStateCopyWith<$Res> {
  factory _$$IdealWeightPageStateImplCopyWith(_$IdealWeightPageStateImpl value,
          $Res Function(_$IdealWeightPageStateImpl) then) =
      __$$IdealWeightPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      HealthCalculator calculatorData,
      Gender gender,
      Units unit,
      double result,
      bool isDiabled});

  @override
  $HealthCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class __$$IdealWeightPageStateImplCopyWithImpl<$Res>
    extends _$IdealWeightPageStateCopyWithImpl<$Res, _$IdealWeightPageStateImpl>
    implements _$$IdealWeightPageStateImplCopyWith<$Res> {
  __$$IdealWeightPageStateImplCopyWithImpl(_$IdealWeightPageStateImpl _value,
      $Res Function(_$IdealWeightPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? gender = freezed,
    Object? unit = freezed,
    Object? result = null,
    Object? isDiabled = null,
  }) {
    return _then(_$IdealWeightPageStateImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      calculatorData: null == calculatorData
          ? _value.calculatorData
          : calculatorData // ignore: cast_nullable_to_non_nullable
              as HealthCalculator,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      unit: freezed == unit
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

class _$IdealWeightPageStateImpl implements _IdealWeightPageState {
  const _$IdealWeightPageStateImpl(
      {required this.formKey,
      required this.calculatorData,
      this.gender = Gender.male,
      this.unit = Units.imperial,
      this.result = 0,
      this.isDiabled = true});

  @override
  final GlobalKey<FormBuilderState> formKey;
  @override
  final HealthCalculator calculatorData;
  @override
  @JsonKey()
  final Gender gender;
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
    return 'IdealWeightPageState(formKey: $formKey, calculatorData: $calculatorData, gender: $gender, unit: $unit, result: $result, isDiabled: $isDiabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdealWeightPageStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.calculatorData, calculatorData) ||
                other.calculatorData == calculatorData) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isDiabled, isDiabled) ||
                other.isDiabled == isDiabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formKey,
      calculatorData,
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(unit),
      result,
      isDiabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdealWeightPageStateImplCopyWith<_$IdealWeightPageStateImpl>
      get copyWith =>
          __$$IdealWeightPageStateImplCopyWithImpl<_$IdealWeightPageStateImpl>(
              this, _$identity);
}

abstract class _IdealWeightPageState implements IdealWeightPageState {
  const factory _IdealWeightPageState(
      {required final GlobalKey<FormBuilderState> formKey,
      required final HealthCalculator calculatorData,
      final Gender gender,
      final Units unit,
      final double result,
      final bool isDiabled}) = _$IdealWeightPageStateImpl;

  @override
  GlobalKey<FormBuilderState> get formKey;
  @override
  HealthCalculator get calculatorData;
  @override
  Gender get gender;
  @override
  Units get unit;
  @override
  double get result;
  @override
  bool get isDiabled;
  @override
  @JsonKey(ignore: true)
  _$$IdealWeightPageStateImplCopyWith<_$IdealWeightPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
