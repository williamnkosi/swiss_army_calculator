import 'package:flutter/material.dart';

double calculateWidthPercentage(BuildContext context, double percentage) {
  double screenWidth = MediaQuery.of(context).size.width;
  double widthPercentage = (percentage / 100) * screenWidth;
  return widthPercentage;
}
