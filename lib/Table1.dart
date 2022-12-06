
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home :MyTable()));
}

class MyTable extends StatelessWidget {
  const MyTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Course',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'College',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Branch',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('B.Tech')),
                DataCell(Text('MMMUT')),
                DataCell(Text('CSE')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('B.Tech')),
                DataCell(Text('HBTU')),
                DataCell(Text('IT')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('B.Tech')),
                DataCell(Text('IET')),
                DataCell(Text('ME')),
              ],
            ),
          ],
        ));
  }
}