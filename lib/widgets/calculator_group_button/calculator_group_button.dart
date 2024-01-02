import 'package:flutter/material.dart';

class CalculatorGroupButton extends StatelessWidget {
  const CalculatorGroupButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
      onTap: () => {Navigator.pushNamed(context, '/${title.toLowerCase()}')},
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Theme.of(context).colorScheme.onSecondary,
            width: 2.0,
          ),
        ),
        child: Center(
            child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
