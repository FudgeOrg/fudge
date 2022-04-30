import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  _InventoryPageState createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  final List<Map<String, dynamic>> _items = List.generate(
      10,
      (index) => {
            'id': index,
            'title': 'Item $index',
            'description':
                'This is the description of the item $index. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            'isExpanded': false
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Inventory List'),
        backgroundColor: Colors.teal[100],
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          elevation: 3,
          // Controlling the expansion behavior
          expansionCallback: (index, isExpanded) {
            setState(() {
              _items[index]['isExpanded'] = !isExpanded;
            });
          },
          animationDuration: const Duration(milliseconds: 600),
          children: _items
              .map(
                (item) => ExpansionPanel(
                  canTapOnHeader: true,
                  backgroundColor: item['isExpanded'] == true
                      ? Colors.cyan[100]
                      : Colors.white,
                  headerBuilder: (_, isExpanded) => Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      child: Text(
                        item['title'],
                        style: const TextStyle(fontSize: 20),
                      )),
                  body: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Text(item['description']),
                  ),
                  isExpanded: item['isExpanded'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}