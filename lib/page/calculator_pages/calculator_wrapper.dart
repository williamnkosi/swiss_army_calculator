import 'package:flutter/material.dart';

class CalculatorPageWrapper extends StatelessWidget {
  final String title;
  const CalculatorPageWrapper({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text(title)),
    );
  }
}
