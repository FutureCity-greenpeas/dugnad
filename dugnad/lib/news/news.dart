import 'package:flutter/material.dart';
import 'package:dugnad/news/newsRow.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hirök"),
      ),
      body: Center(
        child: Column(
          children: [
            NewsRow(),
            NewsRow(),
            NewsRow(),
          ],
          mainAxisAlignment: MainAxisAlignment.start,
        ),
      ),
    );
  }
}
