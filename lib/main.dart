import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/form_page.dart';
import 'package:flutter_demo/pages/grid_list_page.dart';
import 'package:flutter_demo/pages/horizontal_list_page.dart';
import 'package:flutter_demo/pages/image_page.dart';
import 'package:flutter_demo/pages/list_page.dart';
import 'package:flutter_demo/pages/next_page.dart';
import 'package:flutter_demo/pages/provider_page.dart';
import 'package:flutter_demo/pages/text_page.dart';
import 'package:flutter_demo/pages/youtube_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      // routes: {
      //   '/': (context) => MyHomePage(),
      //   '/next': (context) => NextPage(),
      // },
      // initialRoute: '/',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String nextBtnText = '페이지 이동';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('플러터 데모'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.request_page),
            title: Text(nextBtnText),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NextPage('데이터 전송해보기'),
                ),
              );
              print(result);
              nextBtnText = result; // stateless widget이기 때문에 이건 안됨
            },
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('이미지'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImagePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.text_format),
            title: Text('텍스트'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TextPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_return),
            title: Text('폼'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text('리스트'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.grid_view),
            title: Text('그리드 리스트'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GridListPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.amp_stories_outlined),
            title: Text('수평 리스트'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HorizontalListPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.play_circle_fill),
            title: Text('Youtube 클론 페이지'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YoutubePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.model_training),
            title: Text('중급 - 프로바이더 패턴'),
            trailing: Icon(Icons.navigate_next),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProviderPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
