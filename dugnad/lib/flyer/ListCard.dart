import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:dugnad/flyer/ListItem.dart';
import 'package:flutter/material.dart';

Widget ListCard(ListItem item) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 20.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          Icons.person,
          color: Colors.green,
          size: 48.0,
        ),
        title: Text(item.title),
        subtitle: Text(item.author),
        trailing: Text(
          item.date,
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
  );
}
