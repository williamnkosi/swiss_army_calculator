import 'package:flutter/material.dart';
import 'package:swiss_army_calculator/app.dart';
import 'package:swiss_army_calculator/services/locator_service.dart';

void main() async {
  // Ensure that the Flutter framework is initialized
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();

  runApp(const MyApp());
}
