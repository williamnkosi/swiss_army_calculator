// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_fat_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BodyFatPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleGenderEvent,
    required TResult Function() toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateBMREvent,
    TResult? Function()? toggleGenderEvent,
    TResult? Function()? toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateBMREvent,
    TResult Function()? toggleGenderEvent,
    TResult Function()? toggleUnitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BodyFatPageBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyFatPageEventCopyWith<$Res> {
  factory $BodyFatPageEventCopyWith(
          BodyFatPageEvent value, $Res Function(BodyFatPageEvent) then) =
      _$BodyFatPageEventCopyWithImpl<$Res, BodyFatPageEvent>;
}

/// @nodoc
class _$BodyFatPageEventCopyWithImpl<$Res, $Val extends BodyFatPageEvent>
    implements $BodyFatPageEventCopyWith<$Res> {
  _$BodyFatPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BodyFatPageBlocStartedImplCopyWith<$Res> {
  factory _$$BodyFatPageBlocStartedImplCopyWith(
          _$BodyFatPageBlocStartedImpl value,
          $Res Function(_$BodyFatPageBlocStartedImpl) then) =
      __$$BodyFatPageBlocStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HealthCalculator calculator});
}

/// @nodoc
class __$$BodyFatPageBlocStartedImplCopyWithImpl<$Res>
    extends _$BodyFatPageEventCopyWithImpl<$Res, _$BodyFatPageBlocStartedImpl>
    implements _$$BodyFatPageBlocStartedImplCopyWith<$Res> {
  __$$BodyFatPageBlocStartedImplCopyWithImpl(
      _$BodyFatPageBlocStartedImpl _value,
      $Res Function(_$BodyFatPageBlocStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculator = freezed,
  }) {
    return _then(_$BodyFatPageBlocStartedImpl(
      freezed == calculator
          ? _value.calculator
          : calculator // ignore: cast_nullable_to_non_nullable
              as HealthCalculator,
    ));
  }
}

/// @nodoc

class _$BodyFatPageBlocStartedImpl implements BodyFatPageBlocStarted {
  const _$BodyFatPageBlocStartedImpl(this.calculator);

  @override
  final HealthCalculator calculator;

  @override
  String toString() {
    return 'BodyFatPageEvent.bodyMassIndexBlocStarted(calculator: $calculator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyFatPageBlocStartedImpl &&
            const DeepCollectionEquality()
                .equals(other.calculator, calculator));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(calculator));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyFatPageBlocStartedImplCopyWith<_$BodyFatPageBlocStartedImpl>
      get copyWith => __$$BodyFatPageBlocStartedImplCopyWithImpl<
          _$BodyFatPageBlocStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleGenderEvent,
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
    TResult? Function()? toggleGenderEvent,
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
    TResult Function()? toggleGenderEvent,
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
    required TResult Function(BodyFatPageBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (bodyMassIndexBlocStarted != null) {
      return bodyMassIndexBlocStarted(this);
    }
    return orElse();
  }
}

abstract class BodyFatPageBlocStarted implements BodyFatPageEvent {
  const factory BodyFatPageBlocStarted(final HealthCalculator calculator) =
      _$BodyFatPageBlocStartedImpl;

  HealthCalculator get calculator;
  @JsonKey(ignore: true)
  _$$BodyFatPageBlocStartedImplCopyWith<_$BodyFatPageBlocStartedImpl>
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
    extends _$BodyFatPageEventCopyWithImpl<$Res, _$CheckFormStateEventImpl>
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
    return 'BodyFatPageEvent.checkFormStateEvent()';
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
    required TResult Function() toggleGenderEvent,
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
    TResult? Function()? toggleGenderEvent,
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
    TResult Function()? toggleGenderEvent,
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
    required TResult Function(BodyFatPageBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return checkFormStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return checkFormStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent(this);
    }
    return orElse();
  }
}

abstract class CheckFormStateEvent implements BodyFatPageEvent {
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
    extends _$BodyFatPageEventCopyWithImpl<$Res, _$CalculaBMREventImpl>
    implements _$$CalculaBMREventImplCopyWith<$Res> {
  __$$CalculaBMREventImplCopyWithImpl(
      _$CalculaBMREventImpl _value, $Res Function(_$CalculaBMREventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculaBMREventImpl implements CalculaBMREvent {
  const _$CalculaBMREventImpl();

  @override
  String toString() {
    return 'BodyFatPageEvent.calculateBMREvent()';
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
    required TResult Function() toggleGenderEvent,
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
    TResult? Function()? toggleGenderEvent,
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
    TResult Function()? toggleGenderEvent,
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
    required TResult Function(BodyFatPageBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return calculateBMREvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return calculateBMREvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (calculateBMREvent != null) {
      return calculateBMREvent(this);
    }
    return orElse();
  }
}

abstract class CalculaBMREvent implements BodyFatPageEvent {
  const factory CalculaBMREvent() = _$CalculaBMREventImpl;
}

/// @nodoc
abstract class _$$ToggleGenderEventImplCopyWith<$Res> {
  factory _$$ToggleGenderEventImplCopyWith(_$ToggleGenderEventImpl value,
          $Res Function(_$ToggleGenderEventImpl) then) =
      __$$ToggleGenderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleGenderEventImplCopyWithImpl<$Res>
    extends _$BodyFatPageEventCopyWithImpl<$Res, _$ToggleGenderEventImpl>
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
    return 'BodyFatPageEvent.toggleGenderEvent()';
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
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateBMREvent,
    required TResult Function() toggleGenderEvent,
    required TResult Function() toggleUnitEvent,
  }) {
    return toggleGenderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateBMREvent,
    TResult? Function()? toggleGenderEvent,
    TResult? Function()? toggleUnitEvent,
  }) {
    return toggleGenderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateBMREvent,
    TResult Function()? toggleGenderEvent,
    TResult Function()? toggleUnitEvent,
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
    required TResult Function(BodyFatPageBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return toggleGenderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return toggleGenderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (toggleGenderEvent != null) {
      return toggleGenderEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleGenderEvent implements BodyFatPageEvent {
  const factory ToggleGenderEvent() = _$ToggleGenderEventImpl;
}

/// @nodoc
abstract class _$$ToggleUnitEventImplCopyWith<$Res> {
  factory _$$ToggleUnitEventImplCopyWith(_$ToggleUnitEventImpl value,
          $Res Function(_$ToggleUnitEventImpl) then) =
      __$$ToggleUnitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleUnitEventImplCopyWithImpl<$Res>
    extends _$BodyFatPageEventCopyWithImpl<$Res, _$ToggleUnitEventImpl>
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
    return 'BodyFatPageEvent.toggleUnitEvent()';
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
    required TResult Function() toggleGenderEvent,
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
    TResult? Function()? toggleGenderEvent,
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
    TResult Function()? toggleGenderEvent,
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
    required TResult Function(BodyFatPageBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculaBMREvent value) calculateBMREvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return toggleUnitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculaBMREvent value)? calculateBMREvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return toggleUnitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BodyFatPageBlocStarted value)? bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculaBMREvent value)? calculateBMREvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (toggleUnitEvent != null) {
      return toggleUnitEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleUnitEvent implements BodyFatPageEvent {
  const factory ToggleUnitEvent() = _$ToggleUnitEventImpl;
}

/// @nodoc
mixin _$BodyFatPageState {
  dynamic get formKey => throw _privateConstructorUsedError;
  HealthCalculator get calculatorData => throw _privateConstructorUsedError;
  List<List<String>> get rowData => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  Units get unit => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  bool get isDiabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BodyFatPageStateCopyWith<BodyFatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyFatPageStateCopyWith<$Res> {
  factory $BodyFatPageStateCopyWith(
          BodyFatPageState value, $Res Function(BodyFatPageState) then) =
      _$BodyFatPageStateCopyWithImpl<$Res, BodyFatPageState>;
  @useResult
  $Res call(
      {dynamic formKey,
      HealthCalculator calculatorData,
      List<List<String>> rowData,
      Gender gender,
      Units unit,
      double result,
      bool isDiabled});
}

/// @nodoc
class _$BodyFatPageStateCopyWithImpl<$Res, $Val extends BodyFatPageState>
    implements $BodyFatPageStateCopyWith<$Res> {
  _$BodyFatPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = freezed,
    Object? calculatorData = freezed,
    Object? rowData = null,
    Object? gender = freezed,
    Object? unit = freezed,
    Object? result = null,
    Object? isDiabled = null,
  }) {
    return _then(_value.copyWith(
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      calculatorData: freezed == calculatorData
          ? _value.calculatorData
          : calculatorData // ignore: cast_nullable_to_non_nullable
              as HealthCalculator,
      rowData: null == rowData
          ? _value.rowData
          : rowData // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
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
}

/// @nodoc
abstract class _$$BodyFatPageStatImplCopyWith<$Res>
    implements $BodyFatPageStateCopyWith<$Res> {
  factory _$$BodyFatPageStatImplCopyWith(_$BodyFatPageStatImpl value,
          $Res Function(_$BodyFatPageStatImpl) then) =
      __$$BodyFatPageStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic formKey,
      HealthCalculator calculatorData,
      List<List<String>> rowData,
      Gender gender,
      Units unit,
      double result,
      bool isDiabled});
}

/// @nodoc
class __$$BodyFatPageStatImplCopyWithImpl<$Res>
    extends _$BodyFatPageStateCopyWithImpl<$Res, _$BodyFatPageStatImpl>
    implements _$$BodyFatPageStatImplCopyWith<$Res> {
  __$$BodyFatPageStatImplCopyWithImpl(
      _$BodyFatPageStatImpl _value, $Res Function(_$BodyFatPageStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = freezed,
    Object? calculatorData = freezed,
    Object? rowData = null,
    Object? gender = freezed,
    Object? unit = freezed,
    Object? result = null,
    Object? isDiabled = null,
  }) {
    return _then(_$BodyFatPageStatImpl(
      formKey: freezed == formKey ? _value.formKey! : formKey,
      calculatorData: freezed == calculatorData
          ? _value.calculatorData
          : calculatorData // ignore: cast_nullable_to_non_nullable
              as HealthCalculator,
      rowData: null == rowData
          ? _value._rowData
          : rowData // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
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

class _$BodyFatPageStatImpl implements _BodyFatPageStat {
  const _$BodyFatPageStatImpl(
      {required this.formKey,
      required this.calculatorData,
      final List<List<String>> rowData = const [],
      this.gender = Gender.male,
      this.unit = Units.imperial,
      this.result = 0,
      this.isDiabled = true})
      : _rowData = rowData;

  @override
  final dynamic formKey;
  @override
  final HealthCalculator calculatorData;
  final List<List<String>> _rowData;
  @override
  @JsonKey()
  List<List<String>> get rowData {
    if (_rowData is EqualUnmodifiableListView) return _rowData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rowData);
  }

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
    return 'BodyFatPageState(formKey: $formKey, calculatorData: $calculatorData, rowData: $rowData, gender: $gender, unit: $unit, result: $result, isDiabled: $isDiabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyFatPageStatImpl &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality()
                .equals(other.calculatorData, calculatorData) &&
            const DeepCollectionEquality().equals(other._rowData, _rowData) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isDiabled, isDiabled) ||
                other.isDiabled == isDiabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(calculatorData),
      const DeepCollectionEquality().hash(_rowData),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(unit),
      result,
      isDiabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyFatPageStatImplCopyWith<_$BodyFatPageStatImpl> get copyWith =>
      __$$BodyFatPageStatImplCopyWithImpl<_$BodyFatPageStatImpl>(
          this, _$identity);
}

abstract class _BodyFatPageStat implements BodyFatPageState {
  const factory _BodyFatPageStat(
      {required final dynamic formKey,
      required final HealthCalculator calculatorData,
      final List<List<String>> rowData,
      final Gender gender,
      final Units unit,
      final double result,
      final bool isDiabled}) = _$BodyFatPageStatImpl;

  @override
  dynamic get formKey;
  @override
  HealthCalculator get calculatorData;
  @override
  List<List<String>> get rowData;
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
  _$$BodyFatPageStatImplCopyWith<_$BodyFatPageStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
