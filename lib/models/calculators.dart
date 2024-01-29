import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';

part 'calculators.freezed.dart';
part 'calculators.g.dart';

abstract class Calculator {
  CalculatorsDefinedTypes get type;
  String get name;
  String get shortDescription;
  String get fullDescription;
}

@freezed
class FinancialCalculator with _$FinancialCalculator implements Calculator {
  const factory FinancialCalculator({
    required CalculatorsDefinedTypes type,
    required String name,
    required String shortDescription,
    required String fullDescription,
  }) = _FinancialCalculator;

  factory FinancialCalculator.fromJson(Map<String, dynamic> json) =>
      _$FinancialCalculatorFromJson(json);
}

@freezed
class HealthCalculator with _$HealthCalculator implements Calculator {
  const factory HealthCalculator({
    required CalculatorsDefinedTypes type,
    required String name,
    required String shortDescription,
    required String fullDescription,
  }) = _HealthCalculator;

  factory HealthCalculator.fromJson(Map<String, dynamic> json) =>
      _$HealthCalculatorFromJson(json);
}

@freezed
class MathCalculator with _$MathCalculator implements Calculator {
  const factory MathCalculator({
    required CalculatorsDefinedTypes type,
    required String name,
    required String shortDescription,
    required String fullDescription,
  }) = _MathCalculator;

  factory MathCalculator.fromJson(Map<String, dynamic> json) =>
      _$MathCalculatorFromJson(json);
}

@freezed
class ConversionCalculator with _$ConversionCalculator implements Calculator {
  const factory ConversionCalculator({
    required CalculatorsDefinedTypes type,
    required String name,
    required String shortDescription,
    required String fullDescription,
  }) = _ConversionCalculator;

  factory ConversionCalculator.fromJson(Map<String, dynamic> json) =>
      _$ConversionCalculatorFromJson(json);
}

@freezed
class DateAndTimeCalculator with _$DateAndTimeCalculator implements Calculator {
  const factory DateAndTimeCalculator({
    required CalculatorsDefinedTypes type,
    required String name,
    required String shortDescription,
    required String fullDescription,
  }) = _DateAndTimeCalculator;

  factory DateAndTimeCalculator.fromJson(Map<String, dynamic> json) =>
      _$DateAndTimeCalculatorFromJson(json);
}
