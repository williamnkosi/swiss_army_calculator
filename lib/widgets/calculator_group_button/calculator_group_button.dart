import 'package:flutter/material.dart';

class CalculatorGroupButton extends StatelessWidget {
  const CalculatorGroupButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.deepPurple[100],
      onTap: () => {Navigator.pushNamed(context, '/${title.toLowerCase()}')},
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.deepPurple,
            width: 2.0,
          ),
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
