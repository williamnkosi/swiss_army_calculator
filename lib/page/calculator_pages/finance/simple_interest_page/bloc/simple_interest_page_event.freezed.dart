// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_interest_page_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SimpleInterestPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinancialCalculator calculator) blocCreatedEvent,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateResultEvent,
    required TResult Function(RatePeriodTypes rateTimeDuration)
        changeRatePeriodEvent,
    required TResult Function(TimePeriodsTypes timePeriodDuration)
        changeTimePeriodEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateResultEvent,
    TResult? Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult? Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateResultEvent,
    TResult Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocCreatedEvent value) blocCreatedEvent,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ChangeRatePeriodEvent value)
        changeRatePeriodEvent,
    required TResult Function(ChangeTimePeriodEvent value)
        changeTimePeriodEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult? Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleInterestPageEventCopyWith<$Res> {
  factory $SimpleInterestPageEventCopyWith(SimpleInterestPageEvent value,
          $Res Function(SimpleInterestPageEvent) then) =
      _$SimpleInterestPageEventCopyWithImpl<$Res, SimpleInterestPageEvent>;
}

/// @nodoc
class _$SimpleInterestPageEventCopyWithImpl<$Res,
        $Val extends SimpleInterestPageEvent>
    implements $SimpleInterestPageEventCopyWith<$Res> {
  _$SimpleInterestPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BlocCreatedEventImplCopyWith<$Res> {
  factory _$$BlocCreatedEventImplCopyWith(_$BlocCreatedEventImpl value,
          $Res Function(_$BlocCreatedEventImpl) then) =
      __$$BlocCreatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FinancialCalculator calculator});

  $FinancialCalculatorCopyWith<$Res> get calculator;
}

/// @nodoc
class __$$BlocCreatedEventImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageEventCopyWithImpl<$Res, _$BlocCreatedEventImpl>
    implements _$$BlocCreatedEventImplCopyWith<$Res> {
  __$$BlocCreatedEventImplCopyWithImpl(_$BlocCreatedEventImpl _value,
      $Res Function(_$BlocCreatedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculator = null,
  }) {
    return _then(_$BlocCreatedEventImpl(
      null == calculator
          ? _value.calculator
          : calculator // ignore: cast_nullable_to_non_nullable
              as FinancialCalculator,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FinancialCalculatorCopyWith<$Res> get calculator {
    return $FinancialCalculatorCopyWith<$Res>(_value.calculator, (value) {
      return _then(_value.copyWith(calculator: value));
    });
  }
}

/// @nodoc

class _$BlocCreatedEventImpl implements BlocCreatedEvent {
  const _$BlocCreatedEventImpl(this.calculator);

  @override
  final FinancialCalculator calculator;

  @override
  String toString() {
    return 'SimpleInterestPageEvent.blocCreatedEvent(calculator: $calculator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlocCreatedEventImpl &&
            (identical(other.calculator, calculator) ||
                other.calculator == calculator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calculator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlocCreatedEventImplCopyWith<_$BlocCreatedEventImpl> get copyWith =>
      __$$BlocCreatedEventImplCopyWithImpl<_$BlocCreatedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinancialCalculator calculator) blocCreatedEvent,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateResultEvent,
    required TResult Function(RatePeriodTypes rateTimeDuration)
        changeRatePeriodEvent,
    required TResult Function(TimePeriodsTypes timePeriodDuration)
        changeTimePeriodEvent,
  }) {
    return blocCreatedEvent(calculator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateResultEvent,
    TResult? Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult? Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
  }) {
    return blocCreatedEvent?.call(calculator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateResultEvent,
    TResult Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (blocCreatedEvent != null) {
      return blocCreatedEvent(calculator);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocCreatedEvent value) blocCreatedEvent,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ChangeRatePeriodEvent value)
        changeRatePeriodEvent,
    required TResult Function(ChangeTimePeriodEvent value)
        changeTimePeriodEvent,
  }) {
    return blocCreatedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult? Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
  }) {
    return blocCreatedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (blocCreatedEvent != null) {
      return blocCreatedEvent(this);
    }
    return orElse();
  }
}

abstract class BlocCreatedEvent implements SimpleInterestPageEvent {
  const factory BlocCreatedEvent(final FinancialCalculator calculator) =
      _$BlocCreatedEventImpl;

  FinancialCalculator get calculator;
  @JsonKey(ignore: true)
  _$$BlocCreatedEventImplCopyWith<_$BlocCreatedEventImpl> get copyWith =>
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
    extends _$SimpleInterestPageEventCopyWithImpl<$Res,
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
    return 'SimpleInterestPageEvent.checkFormStateEvent()';
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
    required TResult Function(FinancialCalculator calculator) blocCreatedEvent,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateResultEvent,
    required TResult Function(RatePeriodTypes rateTimeDuration)
        changeRatePeriodEvent,
    required TResult Function(TimePeriodsTypes timePeriodDuration)
        changeTimePeriodEvent,
  }) {
    return checkFormStateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateResultEvent,
    TResult? Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult? Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
  }) {
    return checkFormStateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateResultEvent,
    TResult Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
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
    required TResult Function(BlocCreatedEvent value) blocCreatedEvent,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ChangeRatePeriodEvent value)
        changeRatePeriodEvent,
    required TResult Function(ChangeTimePeriodEvent value)
        changeTimePeriodEvent,
  }) {
    return checkFormStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult? Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
  }) {
    return checkFormStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent(this);
    }
    return orElse();
  }
}

abstract class CheckFormStateEvent implements SimpleInterestPageEvent {
  const factory CheckFormStateEvent() = _$CheckFormStateEventImpl;
}

/// @nodoc
abstract class _$$CalculateResultEventImplCopyWith<$Res> {
  factory _$$CalculateResultEventImplCopyWith(_$CalculateResultEventImpl value,
          $Res Function(_$CalculateResultEventImpl) then) =
      __$$CalculateResultEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateResultEventImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageEventCopyWithImpl<$Res,
        _$CalculateResultEventImpl>
    implements _$$CalculateResultEventImplCopyWith<$Res> {
  __$$CalculateResultEventImplCopyWithImpl(_$CalculateResultEventImpl _value,
      $Res Function(_$CalculateResultEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculateResultEventImpl implements CalculateResultEvent {
  const _$CalculateResultEventImpl();

  @override
  String toString() {
    return 'SimpleInterestPageEvent.calculateResultEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateResultEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinancialCalculator calculator) blocCreatedEvent,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateResultEvent,
    required TResult Function(RatePeriodTypes rateTimeDuration)
        changeRatePeriodEvent,
    required TResult Function(TimePeriodsTypes timePeriodDuration)
        changeTimePeriodEvent,
  }) {
    return calculateResultEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateResultEvent,
    TResult? Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult? Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
  }) {
    return calculateResultEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateResultEvent,
    TResult Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (calculateResultEvent != null) {
      return calculateResultEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocCreatedEvent value) blocCreatedEvent,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ChangeRatePeriodEvent value)
        changeRatePeriodEvent,
    required TResult Function(ChangeTimePeriodEvent value)
        changeTimePeriodEvent,
  }) {
    return calculateResultEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult? Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
  }) {
    return calculateResultEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (calculateResultEvent != null) {
      return calculateResultEvent(this);
    }
    return orElse();
  }
}

abstract class CalculateResultEvent implements SimpleInterestPageEvent {
  const factory CalculateResultEvent() = _$CalculateResultEventImpl;
}

/// @nodoc
abstract class _$$ChangeRatePeriodEventImplCopyWith<$Res> {
  factory _$$ChangeRatePeriodEventImplCopyWith(
          _$ChangeRatePeriodEventImpl value,
          $Res Function(_$ChangeRatePeriodEventImpl) then) =
      __$$ChangeRatePeriodEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RatePeriodTypes rateTimeDuration});
}

/// @nodoc
class __$$ChangeRatePeriodEventImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageEventCopyWithImpl<$Res,
        _$ChangeRatePeriodEventImpl>
    implements _$$ChangeRatePeriodEventImplCopyWith<$Res> {
  __$$ChangeRatePeriodEventImplCopyWithImpl(_$ChangeRatePeriodEventImpl _value,
      $Res Function(_$ChangeRatePeriodEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateTimeDuration = null,
  }) {
    return _then(_$ChangeRatePeriodEventImpl(
      null == rateTimeDuration
          ? _value.rateTimeDuration
          : rateTimeDuration // ignore: cast_nullable_to_non_nullable
              as RatePeriodTypes,
    ));
  }
}

/// @nodoc

class _$ChangeRatePeriodEventImpl implements ChangeRatePeriodEvent {
  const _$ChangeRatePeriodEventImpl(this.rateTimeDuration);

  @override
  final RatePeriodTypes rateTimeDuration;

  @override
  String toString() {
    return 'SimpleInterestPageEvent.changeRatePeriodEvent(rateTimeDuration: $rateTimeDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRatePeriodEventImpl &&
            (identical(other.rateTimeDuration, rateTimeDuration) ||
                other.rateTimeDuration == rateTimeDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rateTimeDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRatePeriodEventImplCopyWith<_$ChangeRatePeriodEventImpl>
      get copyWith => __$$ChangeRatePeriodEventImplCopyWithImpl<
          _$ChangeRatePeriodEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinancialCalculator calculator) blocCreatedEvent,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateResultEvent,
    required TResult Function(RatePeriodTypes rateTimeDuration)
        changeRatePeriodEvent,
    required TResult Function(TimePeriodsTypes timePeriodDuration)
        changeTimePeriodEvent,
  }) {
    return changeRatePeriodEvent(rateTimeDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateResultEvent,
    TResult? Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult? Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
  }) {
    return changeRatePeriodEvent?.call(rateTimeDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateResultEvent,
    TResult Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (changeRatePeriodEvent != null) {
      return changeRatePeriodEvent(rateTimeDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocCreatedEvent value) blocCreatedEvent,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ChangeRatePeriodEvent value)
        changeRatePeriodEvent,
    required TResult Function(ChangeTimePeriodEvent value)
        changeTimePeriodEvent,
  }) {
    return changeRatePeriodEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult? Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
  }) {
    return changeRatePeriodEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (changeRatePeriodEvent != null) {
      return changeRatePeriodEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeRatePeriodEvent implements SimpleInterestPageEvent {
  const factory ChangeRatePeriodEvent(final RatePeriodTypes rateTimeDuration) =
      _$ChangeRatePeriodEventImpl;

  RatePeriodTypes get rateTimeDuration;
  @JsonKey(ignore: true)
  _$$ChangeRatePeriodEventImplCopyWith<_$ChangeRatePeriodEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTimePeriodEventImplCopyWith<$Res> {
  factory _$$ChangeTimePeriodEventImplCopyWith(
          _$ChangeTimePeriodEventImpl value,
          $Res Function(_$ChangeTimePeriodEventImpl) then) =
      __$$ChangeTimePeriodEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TimePeriodsTypes timePeriodDuration});
}

/// @nodoc
class __$$ChangeTimePeriodEventImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageEventCopyWithImpl<$Res,
        _$ChangeTimePeriodEventImpl>
    implements _$$ChangeTimePeriodEventImplCopyWith<$Res> {
  __$$ChangeTimePeriodEventImplCopyWithImpl(_$ChangeTimePeriodEventImpl _value,
      $Res Function(_$ChangeTimePeriodEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timePeriodDuration = null,
  }) {
    return _then(_$ChangeTimePeriodEventImpl(
      null == timePeriodDuration
          ? _value.timePeriodDuration
          : timePeriodDuration // ignore: cast_nullable_to_non_nullable
              as TimePeriodsTypes,
    ));
  }
}

/// @nodoc

class _$ChangeTimePeriodEventImpl implements ChangeTimePeriodEvent {
  const _$ChangeTimePeriodEventImpl(this.timePeriodDuration);

  @override
  final TimePeriodsTypes timePeriodDuration;

  @override
  String toString() {
    return 'SimpleInterestPageEvent.changeTimePeriodEvent(timePeriodDuration: $timePeriodDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTimePeriodEventImpl &&
            (identical(other.timePeriodDuration, timePeriodDuration) ||
                other.timePeriodDuration == timePeriodDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timePeriodDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTimePeriodEventImplCopyWith<_$ChangeTimePeriodEventImpl>
      get copyWith => __$$ChangeTimePeriodEventImplCopyWithImpl<
          _$ChangeTimePeriodEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FinancialCalculator calculator) blocCreatedEvent,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateResultEvent,
    required TResult Function(RatePeriodTypes rateTimeDuration)
        changeRatePeriodEvent,
    required TResult Function(TimePeriodsTypes timePeriodDuration)
        changeTimePeriodEvent,
  }) {
    return changeTimePeriodEvent(timePeriodDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateResultEvent,
    TResult? Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult? Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
  }) {
    return changeTimePeriodEvent?.call(timePeriodDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FinancialCalculator calculator)? blocCreatedEvent,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateResultEvent,
    TResult Function(RatePeriodTypes rateTimeDuration)? changeRatePeriodEvent,
    TResult Function(TimePeriodsTypes timePeriodDuration)?
        changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (changeTimePeriodEvent != null) {
      return changeTimePeriodEvent(timePeriodDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BlocCreatedEvent value) blocCreatedEvent,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ChangeRatePeriodEvent value)
        changeRatePeriodEvent,
    required TResult Function(ChangeTimePeriodEvent value)
        changeTimePeriodEvent,
  }) {
    return changeTimePeriodEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult? Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
  }) {
    return changeTimePeriodEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BlocCreatedEvent value)? blocCreatedEvent,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ChangeRatePeriodEvent value)? changeRatePeriodEvent,
    TResult Function(ChangeTimePeriodEvent value)? changeTimePeriodEvent,
    required TResult orElse(),
  }) {
    if (changeTimePeriodEvent != null) {
      return changeTimePeriodEvent(this);
    }
    return orElse();
  }
}

abstract class ChangeTimePeriodEvent implements SimpleInterestPageEvent {
  const factory ChangeTimePeriodEvent(
      final TimePeriodsTypes timePeriodDuration) = _$ChangeTimePeriodEventImpl;

  TimePeriodsTypes get timePeriodDuration;
  @JsonKey(ignore: true)
  _$$ChangeTimePeriodEventImplCopyWith<_$ChangeTimePeriodEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
