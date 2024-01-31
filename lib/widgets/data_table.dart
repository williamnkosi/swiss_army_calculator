import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  final List<String> columns;
  //final List<List<String>> rows;
  const DataTableExample({
    super.key,
    required this.columns,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DataTable(
        columns: [
          DataColumn(
              label: Text(
            columns[0],
            style: const TextStyle(color: Colors.white),
          )),
          DataColumn(
              label: Text(
            columns[1],
            style: const TextStyle(color: Colors.white),
          )),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('John')),
            DataCell(Text('25')),
          ]),
          DataRow(cells: [
            DataCell(Text('Jane')),
            DataCell(Text('30')),
          ]),
          DataRow(cells: [
            DataCell(Text('Bob')),
            DataCell(Text('22')),
          ]),
          DataRow(cells: [
            DataCell(Text('Alice')),
            DataCell(Text('28')),
          ]),
          DataRow(cells: [
            DataCell(Text('Charlie')),
            DataCell(Text('35')),
          ]),
        ],
      ),
    );
  }
}
