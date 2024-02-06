import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/models/types.dart';

double calculateWidthPercentage(BuildContext context, double percentage) {
  double screenWidth = MediaQuery.of(context).size.width;
  double widthPercentage = (percentage / 100) * screenWidth;
  return widthPercentage;
}

double convertFeetAndInchesToCm(int feet, int inches) {
  // 1 foot = 30.48 cm
  // 1 inch = 2.54 cm
  const footInCm = 30.48;
  const inchInCm = 2.54;
  double cm = (feet * footInCm) + (inches * inchInCm);
  return cm;
}

Map<String, int> convertHeightCMToFeetAndInches(double heightInCentimeters) {
  // Convert centimeters to inches
  double heightInInches = heightInCentimeters / 2.54;

  // Calculate feet and remaining inches
  int feet = (heightInInches / 12).floor();
  int inches = (heightInInches % 12).round();

  return {'feet': feet, 'inches': inches};
}

double convertPoundsToKg(double pounds) {
  // 1 pound = 0.453592 kg
  double weightInKg = pounds * 0.453592;
  return weightInKg;
}

double convertKgToLbs(double kilograms) {
  const double conversionFactor = 2.20462;
  return kilograms * conversionFactor;
}

double cacluateBMR(
    {required double weightInKg,
    required double heightInCm,
    required int age,
    required Gender gender}) {
  double bmr = 0;
  if (gender == Gender.male) {
    // Male Formula
    bmr = (10 * weightInKg) + (6.25 * heightInCm) - (5 * age) + 5;
  } else {
    // Female Formula
    bmr = (10 * weightInKg) + (6.25 * heightInCm) - (5 * age) - 161;
  }

  return bmr;
}
