import 'package:flutter/material.dart';

class CalculatorPageWrapper<T> extends StatelessWidget {
  final String title;
  final Widget page;
  const CalculatorPageWrapper({
    Key? key,
    required this.title,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: page,
        ));
  }
}
