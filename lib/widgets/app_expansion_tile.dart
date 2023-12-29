import 'package:flutter/material.dart';

class AppExpansionTile extends StatelessWidget {
  final String title;
  final String description;
  const AppExpansionTile(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
      ),
      children: <Widget>[
        ListTile(
          title: Text(
            description,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}
