import 'package:flutter/material.dart';

class DropdownButtonExample extends StatefulWidget {
  final List<String> values;
  const DropdownButtonExample({super.key, required this.values});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String _dropdownValue = '';
  @override
  void initState() {
    _dropdownValue = widget.values.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          _dropdownValue = value!;
        });
      },
      items: widget.values.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
