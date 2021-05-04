import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  FormPage();

  @override
  Widget build(BuildContext context) {
    final FocusNode myFocusNode = FocusNode();
    String textData = '';
    final myController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('フォーム'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: '플레이스홀더',
                ),
                // autofocus: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return '이 값은 필수 입니다.';
                  }
                  return null;
                },
                onChanged: (text) {
                  textData = text;
                  print('changed $textData');
                },
              ),
              TextFormField(
                controller: myController,
                decoration: InputDecoration(
                  labelText: '여기로 포커스 된다',
                ),
                focusNode: myFocusNode,
              ),
              TextButton(
                onPressed: () {
                  // Focus
                  myFocusNode.requestFocus();
                },
                child: Text('Focus'),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text(myController.text),
                        );
                      });
                },
                child: Text('제출'),
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
      ),
    );
  }
}
