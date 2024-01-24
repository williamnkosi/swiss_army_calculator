// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compound_interest_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompoundInterestPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompoundInterestPageEventCopyWith<$Res> {
  factory $CompoundInterestPageEventCopyWith(CompoundInterestPageEvent value,
          $Res Function(CompoundInterestPageEvent) then) =
      _$CompoundInterestPageEventCopyWithImpl<$Res, CompoundInterestPageEvent>;
}

/// @nodoc
class _$CompoundInterestPageEventCopyWithImpl<$Res,
        $Val extends CompoundInterestPageEvent>
    implements $CompoundInterestPageEventCopyWith<$Res> {
  _$CompoundInterestPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CompoundInterestPageEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CompoundInterestPageEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CompoundInterestPageEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$CompoundInterestPageState {
  GlobalKey<FormBuilderState> get formKey => throw _privateConstructorUsedError;
  double get initialInvestment => throw _privateConstructorUsedError;
  double get annualContribution => throw _privateConstructorUsedError;
  double get monthlyContribution => throw _privateConstructorUsedError;
  double get interestRate => throw _privateConstructorUsedError;
  int get investmentLengthYears => throw _privateConstructorUsedError;
  int get investmentLengthMonths => throw _privateConstructorUsedError;
  double get inflationRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompoundInterestPageStateCopyWith<CompoundInterestPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompoundInterestPageStateCopyWith<$Res> {
  factory $CompoundInterestPageStateCopyWith(CompoundInterestPageState value,
          $Res Function(CompoundInterestPageState) then) =
      _$CompoundInterestPageStateCopyWithImpl<$Res, CompoundInterestPageState>;
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      double initialInvestment,
      double annualContribution,
      double monthlyContribution,
      double interestRate,
      int investmentLengthYears,
      int investmentLengthMonths,
      double inflationRate});
}

/// @nodoc
class _$CompoundInterestPageStateCopyWithImpl<$Res,
        $Val extends CompoundInterestPageState>
    implements $CompoundInterestPageStateCopyWith<$Res> {
  _$CompoundInterestPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? initialInvestment = null,
    Object? annualContribution = null,
    Object? monthlyContribution = null,
    Object? interestRate = null,
    Object? investmentLengthYears = null,
    Object? investmentLengthMonths = null,
    Object? inflationRate = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      initialInvestment: null == initialInvestment
          ? _value.initialInvestment
          : initialInvestment // ignore: cast_nullable_to_non_nullable
              as double,
      annualContribution: null == annualContribution
          ? _value.annualContribution
          : annualContribution // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyContribution: null == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as double,
      investmentLengthYears: null == investmentLengthYears
          ? _value.investmentLengthYears
          : investmentLengthYears // ignore: cast_nullable_to_non_nullable
              as int,
      investmentLengthMonths: null == investmentLengthMonths
          ? _value.investmentLengthMonths
          : investmentLengthMonths // ignore: cast_nullable_to_non_nullable
              as int,
      inflationRate: null == inflationRate
          ? _value.inflationRate
          : inflationRate // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompoundInterestPageStateImplCopyWith<$Res>
    implements $CompoundInterestPageStateCopyWith<$Res> {
  factory _$$CompoundInterestPageStateImplCopyWith(
          _$CompoundInterestPageStateImpl value,
          $Res Function(_$CompoundInterestPageStateImpl) then) =
      __$$CompoundInterestPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GlobalKey<FormBuilderState> formKey,
      double initialInvestment,
      double annualContribution,
      double monthlyContribution,
      double interestRate,
      int investmentLengthYears,
      int investmentLengthMonths,
      double inflationRate});
}

/// @nodoc
class __$$CompoundInterestPageStateImplCopyWithImpl<$Res>
    extends _$CompoundInterestPageStateCopyWithImpl<$Res,
        _$CompoundInterestPageStateImpl>
    implements _$$CompoundInterestPageStateImplCopyWith<$Res> {
  __$$CompoundInterestPageStateImplCopyWithImpl(
      _$CompoundInterestPageStateImpl _value,
      $Res Function(_$CompoundInterestPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
    Object? initialInvestment = null,
    Object? annualContribution = null,
    Object? monthlyContribution = null,
    Object? interestRate = null,
    Object? investmentLengthYears = null,
    Object? investmentLengthMonths = null,
    Object? inflationRate = null,
  }) {
    return _then(_$CompoundInterestPageStateImpl(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
      initialInvestment: null == initialInvestment
          ? _value.initialInvestment
          : initialInvestment // ignore: cast_nullable_to_non_nullable
              as double,
      annualContribution: null == annualContribution
          ? _value.annualContribution
          : annualContribution // ignore: cast_nullable_to_non_nullable
              as double,
      monthlyContribution: null == monthlyContribution
          ? _value.monthlyContribution
          : monthlyContribution // ignore: cast_nullable_to_non_nullable
              as double,
      interestRate: null == interestRate
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as double,
      investmentLengthYears: null == investmentLengthYears
          ? _value.investmentLengthYears
          : investmentLengthYears // ignore: cast_nullable_to_non_nullable
              as int,
      investmentLengthMonths: null == investmentLengthMonths
          ? _value.investmentLengthMonths
          : investmentLengthMonths // ignore: cast_nullable_to_non_nullable
              as int,
      inflationRate: null == inflationRate
          ? _value.inflationRate
          : inflationRate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CompoundInterestPageStateImpl implements _CompoundInterestPageState {
  const _$CompoundInterestPageStateImpl(
      {required this.formKey,
      this.initialInvestment = 0,
      this.annualContribution = 0,
      this.monthlyContribution = 0,
      this.interestRate = 0,
      this.investmentLengthYears = 0,
      this.investmentLengthMonths = 0,
      this.inflationRate = 0});

  @override
  final GlobalKey<FormBuilderState> formKey;
  @override
  @JsonKey()
  final double initialInvestment;
  @override
  @JsonKey()
  final double annualContribution;
  @override
  @JsonKey()
  final double monthlyContribution;
  @override
  @JsonKey()
  final double interestRate;
  @override
  @JsonKey()
  final int investmentLengthYears;
  @override
  @JsonKey()
  final int investmentLengthMonths;
  @override
  @JsonKey()
  final double inflationRate;

  @override
  String toString() {
    return 'CompoundInterestPageState(formKey: $formKey, initialInvestment: $initialInvestment, annualContribution: $annualContribution, monthlyContribution: $monthlyContribution, interestRate: $interestRate, investmentLengthYears: $investmentLengthYears, investmentLengthMonths: $investmentLengthMonths, inflationRate: $inflationRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompoundInterestPageStateImpl &&
            (identical(other.formKey, formKey) || other.formKey == formKey) &&
            (identical(other.initialInvestment, initialInvestment) ||
                other.initialInvestment == initialInvestment) &&
            (identical(other.annualContribution, annualContribution) ||
                other.annualContribution == annualContribution) &&
            (identical(other.monthlyContribution, monthlyContribution) ||
                other.monthlyContribution == monthlyContribution) &&
            (identical(other.interestRate, interestRate) ||
                other.interestRate == interestRate) &&
            (identical(other.investmentLengthYears, investmentLengthYears) ||
                other.investmentLengthYears == investmentLengthYears) &&
            (identical(other.investmentLengthMonths, investmentLengthMonths) ||
                other.investmentLengthMonths == investmentLengthMonths) &&
            (identical(other.inflationRate, inflationRate) ||
                other.inflationRate == inflationRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formKey,
      initialInvestment,
      annualContribution,
      monthlyContribution,
      interestRate,
      investmentLengthYears,
      investmentLengthMonths,
      inflationRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompoundInterestPageStateImplCopyWith<_$CompoundInterestPageStateImpl>
      get copyWith => __$$CompoundInterestPageStateImplCopyWithImpl<
          _$CompoundInterestPageStateImpl>(this, _$identity);
}

abstract class _CompoundInterestPageState implements CompoundInterestPageState {
  const factory _CompoundInterestPageState(
      {required final GlobalKey<FormBuilderState> formKey,
      final double initialInvestment,
      final double annualContribution,
      final double monthlyContribution,
      final double interestRate,
      final int investmentLengthYears,
      final int investmentLengthMonths,
      final double inflationRate}) = _$CompoundInterestPageStateImpl;

  @override
  GlobalKey<FormBuilderState> get formKey;
  @override
  double get initialInvestment;
  @override
  double get annualContribution;
  @override
  double get monthlyContribution;
  @override
  double get interestRate;
  @override
  int get investmentLengthYears;
  @override
  int get investmentLengthMonths;
  @override
  double get inflationRate;
  @override
  @JsonKey(ignore: true)
  _$$CompoundInterestPageStateImplCopyWith<_$CompoundInterestPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
