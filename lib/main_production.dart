import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:swiss_army_calculator/app.dart';
import 'package:swiss_army_calculator/services/locator_service.dart';

void main() async {
  setupGetIt();
  runApp(const MyApp());
}
