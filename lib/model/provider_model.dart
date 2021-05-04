import 'package:flutter/material.dart';

class ProviderModel extends ChangeNotifier {
  String myText = '기본 데이터';

  void changeMyText(String text) {
    myText = text;
    notifyListeners();
  }

  String getMyText() {
    return myText;
  }
}
