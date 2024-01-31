// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_health_pages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseHealthPagesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateEvent,
    required TResult Function() toggleGenderEvent,
    required TResult Function() toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateEvent,
    TResult? Function()? toggleGenderEvent,
    TResult? Function()? toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateEvent,
    TResult Function()? toggleGenderEvent,
    TResult Function()? toggleUnitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedBaseHealthPagesBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateEvent value) calculateEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateEvent value)? calculateEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateEvent value)? calculateEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseHealthPagesEventCopyWith<$Res> {
  factory $BaseHealthPagesEventCopyWith(BaseHealthPagesEvent value,
          $Res Function(BaseHealthPagesEvent) then) =
      _$BaseHealthPagesEventCopyWithImpl<$Res, BaseHealthPagesEvent>;
}

/// @nodoc
class _$BaseHealthPagesEventCopyWithImpl<$Res,
        $Val extends BaseHealthPagesEvent>
    implements $BaseHealthPagesEventCopyWith<$Res> {
  _$BaseHealthPagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedBaseHealthPagesBlocStartedImplCopyWith<$Res> {
  factory _$$StartedBaseHealthPagesBlocStartedImplCopyWith(
          _$StartedBaseHealthPagesBlocStartedImpl value,
          $Res Function(_$StartedBaseHealthPagesBlocStartedImpl) then) =
      __$$StartedBaseHealthPagesBlocStartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HealthCalculator calculator});

  $HealthCalculatorCopyWith<$Res> get calculator;
}

/// @nodoc
class __$$StartedBaseHealthPagesBlocStartedImplCopyWithImpl<$Res>
    extends _$BaseHealthPagesEventCopyWithImpl<$Res,
        _$StartedBaseHealthPagesBlocStartedImpl>
    implements _$$StartedBaseHealthPagesBlocStartedImplCopyWith<$Res> {
  __$$StartedBaseHealthPagesBlocStartedImplCopyWithImpl(
      _$StartedBaseHealthPagesBlocStartedImpl _value,
      $Res Function(_$StartedBaseHealthPagesBlocStartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calculator = null,
  }) {
    return _then(_$StartedBaseHealthPagesBlocStartedImpl(
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

class _$StartedBaseHealthPagesBlocStartedImpl
    implements StartedBaseHealthPagesBlocStarted {
  const _$StartedBaseHealthPagesBlocStartedImpl(this.calculator);

  @override
  final HealthCalculator calculator;

  @override
  String toString() {
    return 'BaseHealthPagesEvent.bodyMassIndexBlocStarted(calculator: $calculator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedBaseHealthPagesBlocStartedImpl &&
            (identical(other.calculator, calculator) ||
                other.calculator == calculator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calculator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedBaseHealthPagesBlocStartedImplCopyWith<
          _$StartedBaseHealthPagesBlocStartedImpl>
      get copyWith => __$$StartedBaseHealthPagesBlocStartedImplCopyWithImpl<
          _$StartedBaseHealthPagesBlocStartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateEvent,
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
    TResult? Function()? calculateEvent,
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
    TResult Function()? calculateEvent,
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
    required TResult Function(StartedBaseHealthPagesBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateEvent value) calculateEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateEvent value)? calculateEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return bodyMassIndexBlocStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateEvent value)? calculateEvent,
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

abstract class StartedBaseHealthPagesBlocStarted
    implements BaseHealthPagesEvent {
  const factory StartedBaseHealthPagesBlocStarted(
          final HealthCalculator calculator) =
      _$StartedBaseHealthPagesBlocStartedImpl;

  HealthCalculator get calculator;
  @JsonKey(ignore: true)
  _$$StartedBaseHealthPagesBlocStartedImplCopyWith<
          _$StartedBaseHealthPagesBlocStartedImpl>
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
    extends _$BaseHealthPagesEventCopyWithImpl<$Res, _$CheckFormStateEventImpl>
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
    return 'BaseHealthPagesEvent.checkFormStateEvent()';
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
    required TResult Function() calculateEvent,
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
    TResult? Function()? calculateEvent,
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
    TResult Function()? calculateEvent,
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
    required TResult Function(StartedBaseHealthPagesBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateEvent value) calculateEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return checkFormStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateEvent value)? calculateEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return checkFormStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateEvent value)? calculateEvent,
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

abstract class CheckFormStateEvent implements BaseHealthPagesEvent {
  const factory CheckFormStateEvent() = _$CheckFormStateEventImpl;
}

/// @nodoc
abstract class _$$CalculateEventImplCopyWith<$Res> {
  factory _$$CalculateEventImplCopyWith(_$CalculateEventImpl value,
          $Res Function(_$CalculateEventImpl) then) =
      __$$CalculateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CalculateEventImplCopyWithImpl<$Res>
    extends _$BaseHealthPagesEventCopyWithImpl<$Res, _$CalculateEventImpl>
    implements _$$CalculateEventImplCopyWith<$Res> {
  __$$CalculateEventImplCopyWithImpl(
      _$CalculateEventImpl _value, $Res Function(_$CalculateEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CalculateEventImpl implements CalculateEvent {
  const _$CalculateEventImpl();

  @override
  String toString() {
    return 'BaseHealthPagesEvent.calculateEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CalculateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HealthCalculator calculator)
        bodyMassIndexBlocStarted,
    required TResult Function() checkFormStateEvent,
    required TResult Function() calculateEvent,
    required TResult Function() toggleGenderEvent,
    required TResult Function() toggleUnitEvent,
  }) {
    return calculateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult? Function()? checkFormStateEvent,
    TResult? Function()? calculateEvent,
    TResult? Function()? toggleGenderEvent,
    TResult? Function()? toggleUnitEvent,
  }) {
    return calculateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HealthCalculator calculator)? bodyMassIndexBlocStarted,
    TResult Function()? checkFormStateEvent,
    TResult Function()? calculateEvent,
    TResult Function()? toggleGenderEvent,
    TResult Function()? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (calculateEvent != null) {
      return calculateEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedBaseHealthPagesBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateEvent value) calculateEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return calculateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateEvent value)? calculateEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return calculateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateEvent value)? calculateEvent,
    TResult Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult Function(ToggleUnitEvent value)? toggleUnitEvent,
    required TResult orElse(),
  }) {
    if (calculateEvent != null) {
      return calculateEvent(this);
    }
    return orElse();
  }
}

abstract class CalculateEvent implements BaseHealthPagesEvent {
  const factory CalculateEvent() = _$CalculateEventImpl;
}

/// @nodoc
abstract class _$$ToggleGenderEventImplCopyWith<$Res> {
  factory _$$ToggleGenderEventImplCopyWith(_$ToggleGenderEventImpl value,
          $Res Function(_$ToggleGenderEventImpl) then) =
      __$$ToggleGenderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleGenderEventImplCopyWithImpl<$Res>
    extends _$BaseHealthPagesEventCopyWithImpl<$Res, _$ToggleGenderEventImpl>
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
    return 'BaseHealthPagesEvent.toggleGenderEvent()';
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
    required TResult Function() calculateEvent,
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
    TResult? Function()? calculateEvent,
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
    TResult Function()? calculateEvent,
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
    required TResult Function(StartedBaseHealthPagesBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateEvent value) calculateEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return toggleGenderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateEvent value)? calculateEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return toggleGenderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateEvent value)? calculateEvent,
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

abstract class ToggleGenderEvent implements BaseHealthPagesEvent {
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
    extends _$BaseHealthPagesEventCopyWithImpl<$Res, _$ToggleUnitEventImpl>
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
    return 'BaseHealthPagesEvent.toggleUnitEvent()';
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
    required TResult Function() calculateEvent,
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
    TResult? Function()? calculateEvent,
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
    TResult Function()? calculateEvent,
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
    required TResult Function(StartedBaseHealthPagesBlocStarted value)
        bodyMassIndexBlocStarted,
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateEvent value) calculateEvent,
    required TResult Function(ToggleGenderEvent value) toggleGenderEvent,
    required TResult Function(ToggleUnitEvent value) toggleUnitEvent,
  }) {
    return toggleUnitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateEvent value)? calculateEvent,
    TResult? Function(ToggleGenderEvent value)? toggleGenderEvent,
    TResult? Function(ToggleUnitEvent value)? toggleUnitEvent,
  }) {
    return toggleUnitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedBaseHealthPagesBlocStarted value)?
        bodyMassIndexBlocStarted,
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateEvent value)? calculateEvent,
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

abstract class ToggleUnitEvent implements BaseHealthPagesEvent {
  const factory ToggleUnitEvent() = _$ToggleUnitEventImpl;
}

/// @nodoc
mixin _$BaseHealthPagesState {
  GlobalKey<FormBuilderState> get formKey => throw _privateConstructorUsedError;
  HealthCalculator get calculatorData => throw _privateConstructorUsedError;
  List<List<String>> get rowData => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  Units get unit => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  bool get isDiabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseHealthPagesStateCopyWith<BaseHealthPagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseHealthPagesStateCopyWith<$Res> {
  factory $BaseHealthPagesStateCopyWith(BaseHealthPagesState value,
          $Res Function(BaseHealthPagesState) then) =
      _$BaseHealthPagesStateCopyWithImpl<$Res, BaseHealthPagesState>;
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      HealthCalculator calculatorData,
      List<List<String>> rowData,
      Gender gender,
      Units unit,
      double result,
      bool isDiabled});

  $HealthCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class _$BaseHealthPagesStateCopyWithImpl<$Res,
        $Val extends BaseHealthPagesState>
    implements $BaseHealthPagesStateCopyWith<$Res> {
  _$BaseHealthPagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? rowData = null,
    Object? gender = null,
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
      rowData: null == rowData
          ? _value.rowData
          : rowData // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
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
abstract class _$$BaseHealthPagesStateImplCopyWith<$Res>
    implements $BaseHealthPagesStateCopyWith<$Res> {
  factory _$$BaseHealthPagesStateImplCopyWith(_$BaseHealthPagesStateImpl value,
          $Res Function(_$BaseHealthPagesStateImpl) then) =
      __$$BaseHealthPagesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      HealthCalculator calculatorData,
      List<List<String>> rowData,
      Gender gender,
      Units unit,
      double result,
      bool isDiabled});

  @override
  $HealthCalculatorCopyWith<$Res> get calculatorData;
}

/// @nodoc
class __$$BaseHealthPagesStateImplCopyWithImpl<$Res>
    extends _$BaseHealthPagesStateCopyWithImpl<$Res, _$BaseHealthPagesStateImpl>
    implements _$$BaseHealthPagesStateImplCopyWith<$Res> {
  __$$BaseHealthPagesStateImplCopyWithImpl(_$BaseHealthPagesStateImpl _value,
      $Res Function(_$BaseHealthPagesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? calculatorData = null,
    Object? rowData = null,
    Object? gender = null,
    Object? unit = null,
    Object? result = null,
    Object? isDiabled = null,
  }) {
    return _then(_$BaseHealthPagesStateImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      calculatorData: null == calculatorData
          ? _value.calculatorData
          : calculatorData // ignore: cast_nullable_to_non_nullable
              as HealthCalculator,
      rowData: null == rowData
          ? _value._rowData
          : rowData // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
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

class _$BaseHealthPagesStateImpl implements _BaseHealthPagesState {
  const _$BaseHealthPagesStateImpl(
      {required this.formKey,
      required this.calculatorData,
      final List<List<String>> rowData = const [],
      this.gender = Gender.male,
      this.unit = Units.imperial,
      this.result = 0,
      this.isDiabled = true})
      : _rowData = rowData;

  @override
  final GlobalKey<FormBuilderState> formKey;
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
    return 'BaseHealthPagesState(formKey: $formKey, calculatorData: $calculatorData, rowData: $rowData, gender: $gender, unit: $unit, result: $result, isDiabled: $isDiabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseHealthPagesStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.calculatorData, calculatorData) ||
                other.calculatorData == calculatorData) &&
            const DeepCollectionEquality().equals(other._rowData, _rowData) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isDiabled, isDiabled) ||
                other.isDiabled == isDiabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formKey,
      calculatorData,
      const DeepCollectionEquality().hash(_rowData),
      gender,
      unit,
      result,
      isDiabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseHealthPagesStateImplCopyWith<_$BaseHealthPagesStateImpl>
      get copyWith =>
          __$$BaseHealthPagesStateImplCopyWithImpl<_$BaseHealthPagesStateImpl>(
              this, _$identity);
}

abstract class _BaseHealthPagesState implements BaseHealthPagesState {
  const factory _BaseHealthPagesState(
      {required final GlobalKey<FormBuilderState> formKey,
      required final HealthCalculator calculatorData,
      final List<List<String>> rowData,
      final Gender gender,
      final Units unit,
      final double result,
      final bool isDiabled}) = _$BaseHealthPagesStateImpl;

  @override
  GlobalKey<FormBuilderState> get formKey;
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
  _$$BaseHealthPagesStateImplCopyWith<_$BaseHealthPagesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
