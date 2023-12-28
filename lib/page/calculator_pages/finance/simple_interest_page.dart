import 'package:flutter/material.dart';

class SimpleInterest extends StatelessWidget {
  const SimpleInterest({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Type something...',
          ),
        )
      ],
    );
  }
}
