import 'package:flutter/material.dart';

class Item {
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText; // info inside expanded panel
  bool isExpanded; // is the panel expanded or not
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> _data = List<Item>.generate(
    10,
    (int index) {
      return Item(
        headerText: 'Item $index',
        expandedText: 'This is item #$index',
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              _data[index].isExpanded = !(_data[index]
                  .isExpanded); // invert isExpanded property of the list item
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              // headerText
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.headerText),
                );
              },

              // expandedText
              body: ListTile(
                  title: Text(item.expandedText),
                  subtitle:
                      const Text('To delete this item, click the Trash icon.'),
                  trailing:
                      const Icon(Icons.delete, color: Colors.orangeAccent),
                  onTap: () {
                    setState(() {
                      _data.removeWhere(
                          (Item currentItem) => item == currentItem);
                    });
                  }),

              // isExpanded
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}
