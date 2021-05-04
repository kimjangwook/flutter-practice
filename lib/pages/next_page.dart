import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('페이지 이동'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$title'),
            TextButton(
              child: Text('뒤로'),
              onPressed: () {
                Navigator.pop(context, '반환값');
              },
            ),
          ],
        ),
      ),
    );
  }
}
