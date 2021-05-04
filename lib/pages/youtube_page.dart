import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  YoutubePage();

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.play_circle_fill),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.redAccent,
        ),
        title: Text(
          'Youtube 채널명',
          textAlign: TextAlign.start,
        ),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.search),
            label: Text(''),
            style: TextButton.styleFrom(
              primary: Colors.grey,
            ),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            label: Text(''),
            style: TextButton.styleFrom(
              primary: Colors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.photo,
                    size: 80,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Youtube 채널명',
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.redAccent,
                            ),
                            Text(
                              '구독하기',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(8.0),
                    leading: Image.network(
                      'https://avatars.githubusercontent.com/u/14495700?v=4',
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index],
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '10만회 재생',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            Text(
                              '5일전',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
