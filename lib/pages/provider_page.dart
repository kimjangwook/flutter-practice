import 'package:flutter/material.dart';
import 'package:flutter_demo/model/provider_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  ProviderPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('프로바이더 패턴'),
      ),
      body: ChangeNotifierProvider<ProviderModel>(
        create: (_) => ProviderModel(),
        child: Consumer<ProviderModel>(
          builder: (context, model, child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    model.getMyText(),
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.lightGreen,
                      fontWeight: FontWeight.w900,
                      // fontStyle: GoogleFonts.lato(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      model.changeMyText('변경된 데이터');
                    },
                    child: Text('프로바이더에서 데이터 취득'),
                  ),
                  TextButton(
                    child: Text('뒤로'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
