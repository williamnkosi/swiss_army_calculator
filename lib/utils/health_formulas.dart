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
