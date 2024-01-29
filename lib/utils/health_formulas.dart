double calculateBMIinKilograms(double weightInKg, double heightInMeters) {
  return weightInKg / (heightInMeters * heightInMeters);
}

double calculateBMIinPounds(
    double weightInPounds, double heightFeet, double heightInches) {
  // Convert height to inches
  double heightInInches = (heightFeet * 12) + heightInches;

  // Calculate BMI using the modified formula
  return (weightInPounds / (heightInInches * heightInInches)) * 703;
}
