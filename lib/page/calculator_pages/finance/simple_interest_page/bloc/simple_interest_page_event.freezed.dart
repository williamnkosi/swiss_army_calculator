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
    required TResult Function(GlobalKey<FormBuilderState> formKey)
        checkFormStateEvent,
    required TResult Function(double principle, double rate, double duration)
        calculateResultEvent,
    required TResult Function() toggleInfoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult? Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult? Function()? toggleInfoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult Function()? toggleInfoEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ToggleInfoEvent value) toggleInfoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ToggleInfoEvent value)? toggleInfoEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ToggleInfoEvent value)? toggleInfoEvent,
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
abstract class _$$CheckFormStateEventImplCopyWith<$Res> {
  factory _$$CheckFormStateEventImplCopyWith(_$CheckFormStateEventImpl value,
          $Res Function(_$CheckFormStateEventImpl) then) =
      __$$CheckFormStateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalKey<FormBuilderState> formKey});
}

/// @nodoc
class __$$CheckFormStateEventImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageEventCopyWithImpl<$Res,
        _$CheckFormStateEventImpl>
    implements _$$CheckFormStateEventImplCopyWith<$Res> {
  __$$CheckFormStateEventImplCopyWithImpl(_$CheckFormStateEventImpl _value,
      $Res Function(_$CheckFormStateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$CheckFormStateEventImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
    ));
  }
}

/// @nodoc

class _$CheckFormStateEventImpl implements CheckFormStateEvent {
  const _$CheckFormStateEventImpl({required this.formKey});

  @override
  final GlobalKey<FormBuilderState> formKey;

  @override
  String toString() {
    return 'SimpleInterestPageEvent.checkFormStateEvent(formKey: $formKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckFormStateEventImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckFormStateEventImplCopyWith<_$CheckFormStateEventImpl> get copyWith =>
      __$$CheckFormStateEventImplCopyWithImpl<_$CheckFormStateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalKey<FormBuilderState> formKey)
        checkFormStateEvent,
    required TResult Function(double principle, double rate, double duration)
        calculateResultEvent,
    required TResult Function() toggleInfoEvent,
  }) {
    return checkFormStateEvent(formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult? Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult? Function()? toggleInfoEvent,
  }) {
    return checkFormStateEvent?.call(formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult Function()? toggleInfoEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent(formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ToggleInfoEvent value) toggleInfoEvent,
  }) {
    return checkFormStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ToggleInfoEvent value)? toggleInfoEvent,
  }) {
    return checkFormStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ToggleInfoEvent value)? toggleInfoEvent,
    required TResult orElse(),
  }) {
    if (checkFormStateEvent != null) {
      return checkFormStateEvent(this);
    }
    return orElse();
  }
}

abstract class CheckFormStateEvent implements SimpleInterestPageEvent {
  const factory CheckFormStateEvent(
          {required final GlobalKey<FormBuilderState> formKey}) =
      _$CheckFormStateEventImpl;

  GlobalKey<FormBuilderState> get formKey;
  @JsonKey(ignore: true)
  _$$CheckFormStateEventImplCopyWith<_$CheckFormStateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalculateResultEventImplCopyWith<$Res> {
  factory _$$CalculateResultEventImplCopyWith(_$CalculateResultEventImpl value,
          $Res Function(_$CalculateResultEventImpl) then) =
      __$$CalculateResultEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double principle, double rate, double duration});
}

/// @nodoc
class __$$CalculateResultEventImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageEventCopyWithImpl<$Res,
        _$CalculateResultEventImpl>
    implements _$$CalculateResultEventImplCopyWith<$Res> {
  __$$CalculateResultEventImplCopyWithImpl(_$CalculateResultEventImpl _value,
      $Res Function(_$CalculateResultEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? principle = null,
    Object? rate = null,
    Object? duration = null,
  }) {
    return _then(_$CalculateResultEventImpl(
      principle: null == principle
          ? _value.principle
          : principle // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CalculateResultEventImpl implements CalculateResultEvent {
  const _$CalculateResultEventImpl(
      {required this.principle, required this.rate, required this.duration});

  @override
  final double principle;
  @override
  final double rate;
  @override
  final double duration;

  @override
  String toString() {
    return 'SimpleInterestPageEvent.calculateResultEvent(principle: $principle, rate: $rate, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculateResultEventImpl &&
            (identical(other.principle, principle) ||
                other.principle == principle) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, principle, rate, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculateResultEventImplCopyWith<_$CalculateResultEventImpl>
      get copyWith =>
          __$$CalculateResultEventImplCopyWithImpl<_$CalculateResultEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalKey<FormBuilderState> formKey)
        checkFormStateEvent,
    required TResult Function(double principle, double rate, double duration)
        calculateResultEvent,
    required TResult Function() toggleInfoEvent,
  }) {
    return calculateResultEvent(principle, rate, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult? Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult? Function()? toggleInfoEvent,
  }) {
    return calculateResultEvent?.call(principle, rate, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult Function()? toggleInfoEvent,
    required TResult orElse(),
  }) {
    if (calculateResultEvent != null) {
      return calculateResultEvent(principle, rate, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ToggleInfoEvent value) toggleInfoEvent,
  }) {
    return calculateResultEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ToggleInfoEvent value)? toggleInfoEvent,
  }) {
    return calculateResultEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ToggleInfoEvent value)? toggleInfoEvent,
    required TResult orElse(),
  }) {
    if (calculateResultEvent != null) {
      return calculateResultEvent(this);
    }
    return orElse();
  }
}

abstract class CalculateResultEvent implements SimpleInterestPageEvent {
  const factory CalculateResultEvent(
      {required final double principle,
      required final double rate,
      required final double duration}) = _$CalculateResultEventImpl;

  double get principle;
  double get rate;
  double get duration;
  @JsonKey(ignore: true)
  _$$CalculateResultEventImplCopyWith<_$CalculateResultEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleInfoEventImplCopyWith<$Res> {
  factory _$$ToggleInfoEventImplCopyWith(_$ToggleInfoEventImpl value,
          $Res Function(_$ToggleInfoEventImpl) then) =
      __$$ToggleInfoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleInfoEventImplCopyWithImpl<$Res>
    extends _$SimpleInterestPageEventCopyWithImpl<$Res, _$ToggleInfoEventImpl>
    implements _$$ToggleInfoEventImplCopyWith<$Res> {
  __$$ToggleInfoEventImplCopyWithImpl(
      _$ToggleInfoEventImpl _value, $Res Function(_$ToggleInfoEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleInfoEventImpl implements ToggleInfoEvent {
  const _$ToggleInfoEventImpl();

  @override
  String toString() {
    return 'SimpleInterestPageEvent.toggleInfoEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleInfoEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GlobalKey<FormBuilderState> formKey)
        checkFormStateEvent,
    required TResult Function(double principle, double rate, double duration)
        calculateResultEvent,
    required TResult Function() toggleInfoEvent,
  }) {
    return toggleInfoEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult? Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult? Function()? toggleInfoEvent,
  }) {
    return toggleInfoEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GlobalKey<FormBuilderState> formKey)? checkFormStateEvent,
    TResult Function(double principle, double rate, double duration)?
        calculateResultEvent,
    TResult Function()? toggleInfoEvent,
    required TResult orElse(),
  }) {
    if (toggleInfoEvent != null) {
      return toggleInfoEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckFormStateEvent value) checkFormStateEvent,
    required TResult Function(CalculateResultEvent value) calculateResultEvent,
    required TResult Function(ToggleInfoEvent value) toggleInfoEvent,
  }) {
    return toggleInfoEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult? Function(CalculateResultEvent value)? calculateResultEvent,
    TResult? Function(ToggleInfoEvent value)? toggleInfoEvent,
  }) {
    return toggleInfoEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckFormStateEvent value)? checkFormStateEvent,
    TResult Function(CalculateResultEvent value)? calculateResultEvent,
    TResult Function(ToggleInfoEvent value)? toggleInfoEvent,
    required TResult orElse(),
  }) {
    if (toggleInfoEvent != null) {
      return toggleInfoEvent(this);
    }
    return orElse();
  }
}

abstract class ToggleInfoEvent implements SimpleInterestPageEvent {
  const factory ToggleInfoEvent() = _$ToggleInfoEventImpl;
}
