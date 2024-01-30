// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculators.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FinancialCalculatorImpl _$$FinancialCalculatorImplFromJson(
        Map<String, dynamic> json) =>
    _$FinancialCalculatorImpl(
      type: $enumDecode(_$CalculatorsDefinedTypesEnumMap, json['type']),
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
    );

Map<String, dynamic> _$$FinancialCalculatorImplToJson(
        _$FinancialCalculatorImpl instance) =>
    <String, dynamic>{
      'type': _$CalculatorsDefinedTypesEnumMap[instance.type]!,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
    };

const _$CalculatorsDefinedTypesEnumMap = {
  CalculatorsDefinedTypes.simpleInterest: 'simpleInterest',
  CalculatorsDefinedTypes.compoundInterest: 'compoundInterest',
  CalculatorsDefinedTypes.annuity: 'annuity',
  CalculatorsDefinedTypes.salary: 'salary',
  CalculatorsDefinedTypes.income: 'income',
  CalculatorsDefinedTypes.calculator401k: 'calculator401k',
  CalculatorsDefinedTypes.loan: 'loan',
  CalculatorsDefinedTypes.percentage: 'percentage',
  CalculatorsDefinedTypes.randomNumber: 'randomNumber',
  CalculatorsDefinedTypes.triangle: 'triangle',
  CalculatorsDefinedTypes.age: 'age',
  CalculatorsDefinedTypes.time: 'time',
  CalculatorsDefinedTypes.date: 'date',
  CalculatorsDefinedTypes.bmi: 'bmi',
  CalculatorsDefinedTypes.bmr: 'bmr',
  CalculatorsDefinedTypes.calorie: 'calorie',
  CalculatorsDefinedTypes.bodyFat: 'bodyFat',
  CalculatorsDefinedTypes.idealWeight: 'idealWeight',
};

_$HealthCalculatorImpl _$$HealthCalculatorImplFromJson(
        Map<String, dynamic> json) =>
    _$HealthCalculatorImpl(
      type: $enumDecode(_$CalculatorsDefinedTypesEnumMap, json['type']),
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
    );

Map<String, dynamic> _$$HealthCalculatorImplToJson(
        _$HealthCalculatorImpl instance) =>
    <String, dynamic>{
      'type': _$CalculatorsDefinedTypesEnumMap[instance.type]!,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
    };

_$MathCalculatorImpl _$$MathCalculatorImplFromJson(Map<String, dynamic> json) =>
    _$MathCalculatorImpl(
      type: $enumDecode(_$CalculatorsDefinedTypesEnumMap, json['type']),
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
    );

Map<String, dynamic> _$$MathCalculatorImplToJson(
        _$MathCalculatorImpl instance) =>
    <String, dynamic>{
      'type': _$CalculatorsDefinedTypesEnumMap[instance.type]!,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
    };

_$ConversionCalculatorImpl _$$ConversionCalculatorImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversionCalculatorImpl(
      type: $enumDecode(_$CalculatorsDefinedTypesEnumMap, json['type']),
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
    );

Map<String, dynamic> _$$ConversionCalculatorImplToJson(
        _$ConversionCalculatorImpl instance) =>
    <String, dynamic>{
      'type': _$CalculatorsDefinedTypesEnumMap[instance.type]!,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
    };

_$DateAndTimeCalculatorImpl _$$DateAndTimeCalculatorImplFromJson(
        Map<String, dynamic> json) =>
    _$DateAndTimeCalculatorImpl(
      type: $enumDecode(_$CalculatorsDefinedTypesEnumMap, json['type']),
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String,
      fullDescription: json['fullDescription'] as String,
    );

Map<String, dynamic> _$$DateAndTimeCalculatorImplToJson(
        _$DateAndTimeCalculatorImpl instance) =>
    <String, dynamic>{
      'type': _$CalculatorsDefinedTypesEnumMap[instance.type]!,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'fullDescription': instance.fullDescription,
    };
