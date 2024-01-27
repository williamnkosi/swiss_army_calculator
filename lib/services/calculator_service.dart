import 'dart:convert';

import 'package:flutter/services.dart';

abstract class Calculator {
  late String name;
  late String shortDescription;
  late String fullDescription;
}

class FinancialCalculator implements Calculator {
  @override
  String fullDescription;

  @override
  String name;

  @override
  String shortDescription;

  FinancialCalculator(this.name, this.shortDescription, this.fullDescription);

  factory FinancialCalculator.fromMap(Map<String, dynamic> map) {
    return FinancialCalculator(
      map['fullDescription'] ?? '',
      map['name'] ?? '',
      map['shortDescription'] ?? '',
    );
  }
}

class HealthCalculator implements Calculator {
  @override
  String fullDescription;

  @override
  String name;

  @override
  String shortDescription;
  HealthCalculator(
    this.fullDescription,
    this.name,
    this.shortDescription,
  );

  factory HealthCalculator.fromMap(Map<String, dynamic> map) {
    return HealthCalculator(
      map['fullDescription'] ?? '',
      map['name'] ?? '',
      map['shortDescription'] ?? '',
    );
  }
}

// class ConversionCalculator implements Calculator {
//   @override
//   String fullDescription;

//   @override
//   String name;

//   @override
//   String shortDescription;
//   ConversionCalculator({
//  this.fullDescription,
//    this.name,
//     this.shortDescription,
//   );

//   factory FinancialCalculator.fromMap(Map<String, dynamic> map) {
//     return FinancialCalculator(
//       map['fullDescription'] ?? '',
//       map['name'] ?? '',
//       map['shortDescription'] ?? '',
//     );
//   }
// }

// class MathCalculator implements Calculator {
//   @override
//   String fullDescription;

//   @override
//   String name;

//   @override
//   String shortDescription;
//   MathCalculator({
//     required this.fullDescription,
//     required this.name,
//     required this.shortDescription,
//   });

//   factory FinancialCalculator.fromMap(Map<String, dynamic> map) {
//     return FinancialCalculator(
//       map['fullDescription'] ?? '',
//       map['name'] ?? '',
//       map['shortDescription'] ?? '',
//     );
//   }
// }

// class DataAndTimeCalculator implements Calculator {
//   @override
//   String fullDescription;

//   @override
//   String name;

//   @override
//   String shortDescription;
//   DataAndTimeCalculator({
//     required this.fullDescription,
//     required this.name,
//     required this.shortDescription,
//   });

//   factory FinancialCalculator.fromMap(Map<String, dynamic> map) {
//     return FinancialCalculator(
//       map['fullDescription'] ?? '',
//       map['name'] ?? '',
//       map['shortDescription'] ?? '',
//     );
//   }
// }

class CalculatorFactoryService {
  List<Calculator> calculators = [];
  CalculatorFactoryService() {
    final jsonData = jsonToMap();
    //_createListOfCalculators(jsonData);
  }

  dynamic jsonToMap() async {
    try {
      final file = await rootBundle.loadString('assets/calculators.json');
      return jsonDecode(file);
    } catch (e) {
      print("Error decoding JSON: $e");
    }
  }

  // _createListOfCalculators(dynamic jsonData) {
  //   try {
  //     for (var calculator in jsonData) {
  //       if (calcula)
  //         calculators.add(FinancialCalculator(
  //             name: calculator['name'],
  //             description: calculator['description']));
  //     }
  //   } catch (e) {
  //     print("Error creating list of calculators: $e");
  //   }
  // }
}
