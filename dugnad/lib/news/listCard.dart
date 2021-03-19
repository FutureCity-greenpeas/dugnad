import 'package:dugnad/news/listitem.dart';
import 'package:flutter/material.dart';

Widget listcard(ListItem item, BoxConstraints constraint) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 20.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.teal.withAlpha(60),
        onTap: () {
          print('IM TAPPED');
        },
        child: ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.green,
            size: constraint.maxWidth > 500 ? 24 : 12,
          ),
          title: Text(item.title),
          subtitle: Container(child: Text(item.author)),
          trailing: Text(
            item.date,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    ),
  );
}
