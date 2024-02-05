import '../models/types.dart';

double calculateBMIinKilograms(double weightInKg, double heightInCM) {
  return weightInKg / (heightInCM * heightInCM);
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
  final bmi = calculateBMIinKilograms(weightInKg, heightInCM);
  double bodyFat = 0.0;
  if (gender == Gender.male) {
    bodyFat = (1.20 * bmi) + (0.23 * age) - 16.2;
  } else {
    bodyFat = (1.20 * bmi) + (0.23 * age) - 5.4;
  }
  return bodyFat;
}
