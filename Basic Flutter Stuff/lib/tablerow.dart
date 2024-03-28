import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table Widget'),
      ),
      body: Center(
        child: Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FractionColumnWidth(0.5),
            1: FractionColumnWidth(0.25),
            2: FractionColumnWidth(0.25),
          },
          children: [
            buildRow(['Name', 'City', 'Age'], isHeader: true),
            buildRow(['Sarah', 'New York', '21']),
            buildRow(['Emma', 'Sydney', '24']),
            buildRow(['John', 'London', '22']),
          ],
        ),
      ),
    );
  }

  // same thing:
  //  TableRow buildRow(List<String> cells) =>
  //    TableRow(children: cells.map((cell) => Text(cell)).toList());

  TableRow buildRow(List<String> cells, {bool isHeader = false}) {
    return TableRow(
        children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: 18,
      );

      return Padding(
        padding: const EdgeInsets.all(12),
        child: Center(child: Text(cell, style: style)),
      );
    }).toList());
  }
}
