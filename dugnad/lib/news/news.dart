import 'package:flutter/material.dart';
import 'package:dugnad/news/newsRow.dart';

class News extends StatelessWidget {
  const News({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Hírek';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: [newsRow, newsRow, newsRow],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
