import 'dart:math';

import '../models/types.dart';

double calculateBmiUsingMetric(double weightInKg, double heightInCM) {
  return weightInKg / ((heightInCM / 100) * (heightInCM / 100));
}

double calculateBMIinPounds(
    double weightInPounds, double heightFeet, double heightInches) {
  // Convert height to inches
  double heightInInches = (heightFeet * 12) + heightInches;

  // Calculate BMI using the modified formula
  return (weightInPounds / (heightInInches * heightInInches)) * 703;
}

double calculateBodyFatUsingBMI(
    {required double weightInKg,
    required double heightInCM,
    required int age,
    required Gender gender}) {
  // Calculate BMI
  final bmi = calculateBmiUsingMetric(weightInKg, heightInCM);
  double bodyFat = 0.0;
  if (gender == Gender.male) {
    bodyFat = (1.20 * bmi) + (0.23 * age) - 16.2;
  } else {
    bodyFat = (1.20 * bmi) + (0.23 * age) - 5.4;
  }
  return bodyFat;
}

double calculateNavyMethodMetric(
    {required double neckCircumferenceInCM,
    required double waistCircumferenceInCM,
    required double heightInCM}) {
  double logBase10(double x) => log(x) / ln10;

  // Calculate body fat percentage using the Navy Method formula
  double bodyFatPercentage = 0.0;

  // Convert measurements to centimeters
  double neckCircumferenceCM = neckCircumferenceInCM;
  double waistCircumferenceCM = waistCircumferenceInCM;

  // Calculate body fat percentage
  bodyFatPercentage = (495 /
          (1.0324 -
              0.19077 * logBase10(waistCircumferenceCM - neckCircumferenceCM) +
              0.15456 * logBase10(heightInCM))) -
      450;

  return bodyFatPercentage;
}

/// This function calculates the ideal weight using the Hamwi formula
///
/// This formula is calculated using US units/ imperial units for the height
/// This function returns result in KGs

double idealWeightHamwiFormula(
    {required Map<String, int> heightInImperial, required Gender gender}) {
  // Male constants
  // These are in KGs
  double maleBaseWeight = 48.0;
  double maleIncrement = 2.7;

  // Female constants
  // These are in KGs
  double femaleBaseWeight = 45.5;
  double femaleIncrement = 2.2;
  int inchesFromInputHeight = convertFeetAndInchesToInches(
      feet: heightInImperial['feet']!, inches: heightInImperial['inches']!);
  int inchesFrom5feet = convertFeetAndInchesToInches(feet: 5, inches: 0);

  if (gender == Gender.male) {
    return maleBaseWeight +
        (maleIncrement * (inchesFromInputHeight - inchesFrom5feet));
  } else {
    return femaleBaseWeight +
        (femaleIncrement * (inchesFromInputHeight - inchesFrom5feet));
  }
}

/// This function calculates the ideal weight using the Robinson formula
///
/// This formula is calculated using US units/ imperial units for the height
/// This function returns result in KGs
double idealWeightRobinsonFormula(
    {required Map<String, int> heightInImperial, required Gender gender}) {
  // Male constants
  double maleBaseWeight = 52.0;
  double maleIncrement = 1.9;

  // Female constants
  double femaleBaseWeight = 49.0;
  double femaleIncrement = 1.7;

  int inchesFromInputHeight = convertFeetAndInchesToInches(
      feet: heightInImperial['feet']!, inches: heightInImperial['inches']!);
  int inchesFrom5feet = convertFeetAndInchesToInches(feet: 5, inches: 0);
  if (gender == Gender.male) {
    return maleBaseWeight +
        (inchesFromInputHeight - inchesFrom5feet) * maleIncrement;
  } else {
    return femaleBaseWeight +
        (inchesFromInputHeight - inchesFrom5feet) * femaleIncrement;
  }
}

int convertFeetAndInchesToInches({required int feet, required int inches}) {
  return (feet * 12) + inches;
}
