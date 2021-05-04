import 'package:flutter/material.dart';

class GridListPage extends StatelessWidget {
  GridListPage();

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: Text('그리드 리스트'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Column(
            children: [
              // Expended 로 감싸면 좋은 사이즈로 알아서 변경해줌.
              Expanded(
                child: Image.network(
                  'https://avatars.githubusercontent.com/u/14495700?v=4',
                ),
              ),
              Text(
                'Item ${index + 1}',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          );
        }),
      ),
    );
  }
}
