import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:swiss_army_calculator/models/calculator_types.dart';

import '../models/calculators.dart';

class CalculatorFactoryService {
  List<Calculator> calculators = [];
  List<FinancialCalculator> financialCalculators = [];
  List<HealthCalculator> healthCalculators = [];
  List<MathCalculator> mathCalculators = [];
  List<ConversionCalculator> conversionCalculators = [];
  List<DateAndTimeCalculator> dateAndTimeCalculators = [];
  CalculatorFactoryService() {
    jsonToMap();
  }

  List<Calculator> get getCalculators {
    return calculators = [
      ...financialCalculators,
      ...healthCalculators,
      ...mathCalculators,
      ...conversionCalculators,
      ...dateAndTimeCalculators
    ];
  }

  jsonToMap() async {
    try {
      final file = await rootBundle.loadString('assets/calculators.json');

      final test = jsonDecode(file);
      _createListOfCalculators(test);
      // print(test['financial']['calculators']);
      return test;
    } catch (e) {
      throw Exception("Error decoding JSON: $e");
    }
  }

  _createListOfCalculators(dynamic jsonData) {
    try {
      for (var cal in jsonData['financial']['calculators']) {
        financialCalculators.add(FinancialCalculator(
            type: _stringToEnum(cal['type']),
            name: cal['name'],
            shortDescription: cal['shortDesription'],
            fullDescription: cal['fullDescription']));
      }

      for (var cal in jsonData['Health']['calculators']) {
        healthCalculators.add(HealthCalculator(
            type: _stringToEnum(cal['type']),
            name: cal['name'],
            shortDescription: cal['shortDesription'],
            fullDescription: cal['fullDescription']));
      }
    } catch (e) {
      throw Exception("Error creating list of calculators: $e");
    }
  }

  CalculatorsDefinedTypes _stringToEnum(String typeString) {
    // Using Enum.values to get a list of all enum values
    for (CalculatorsDefinedTypes type in CalculatorsDefinedTypes.values) {
      // Comparing the string representation of the enum value
      if (type.toString().split('.')[1] == typeString) {
        return type;
      }
    }
    // Handle the case when the string doesn't match any enum value
    throw ArgumentError('Invalid color string: $typeString');
  }
}
