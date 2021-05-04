import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  ImagePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이미지'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.network(
            //     'https://avatars.githubusercontent.com/u/14495700?v=4'),
            Image.asset('images/profile.jpg'),
            TextButton(
              child: Text('뒤로'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
