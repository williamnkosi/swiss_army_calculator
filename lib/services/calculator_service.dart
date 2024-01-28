import 'dart:convert';

import 'package:flutter/services.dart';

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
      print("Error decoding JSON: $e");
    }
  }

  _createListOfCalculators(dynamic jsonData) {
    try {
      for (var cal in jsonData['financial']['calculators']) {
        financialCalculators.add(FinancialCalculator(
            name: cal['name'],
            shortDescription: cal['shortDesription'],
            fullDescription: cal['fullDescription']));
      }

      for (var cal in jsonData['Health']['calculators']) {
        healthCalculators.add(HealthCalculator(
            name: cal['name'],
            shortDescription: cal['shortDesription'],
            fullDescription: cal['fullDescription']));
      }
    } catch (e) {
      print("Error creating list of calculators: $e");
    }
  }
}
