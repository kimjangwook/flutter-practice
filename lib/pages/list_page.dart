import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage();

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: Text('리스트'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.all_inclusive),
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
