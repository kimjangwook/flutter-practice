import 'package:flutter/material.dart';

class HorizontalListPage extends StatelessWidget {
  HorizontalListPage();

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: Text('수평 리스트'),
      ),
      body: Container(
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
