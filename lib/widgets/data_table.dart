import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  final List<String> columns;
  final List<List<String>> rows;
  const DataTableExample({
    super.key,
    required this.columns,
    required this.rows,
  });

  _generateRows() {
    return rows.map((row) {
      return DataRow(cells: [
        DataCell(Text(row[0])),
        DataCell(Text(row[1])),
      ]);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DataTable(
        dataRowMaxHeight: MediaQuery.of(context).size.height * 0.1,
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
          ..._generateRows(),
        ],
      ),
    );
  }
}
