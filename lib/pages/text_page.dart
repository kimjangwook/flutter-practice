import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextPage extends StatelessWidget {
  TextPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('텍스트'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Test Text',
              style: TextStyle(
                fontSize: 40,
                color: Colors.lightGreen,
                fontWeight: FontWeight.w900,
                // fontStyle: GoogleFonts.lato(),
              ),
            ),
            Text(
              'Google Font',
              style: GoogleFonts.pacifico(
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Colors.purple,
              ),
            ),
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
