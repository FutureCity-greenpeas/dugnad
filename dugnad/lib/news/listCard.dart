import 'dart:math';

import 'package:dugnad/news/listitem.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

Widget listcard(ListItem item, context, [BoxConstraints constraint]) {
  Color c = getRndColor();
  return InkWell(
    splashColor: Colors.teal.withAlpha(60),
    onTap: () {
      showDialog(
          context: context,
          builder: (context) {
            return DetailsDialog(item, c);
          });
    },
    child: Card(
      color: c,
      elevation: 2.0,
      margin: EdgeInsets.only(bottom: 20.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.green,
            size: (constraint?.maxWidth ?? 600) > 500 ? 24 : 12,
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

Color getRndColor() {
  List<Color> colors = [
    HexColor("3E8469"),
    HexColor("FFD2D2"),
    HexColor("69B09C"),
    HexColor("6AAE72"),
  ];
  Random rnd = new Random();
  return colors[rnd.nextInt(colors.length)];
}

class DetailsDialog extends StatefulWidget {
  final ListItem item;
  final Color c;

  const DetailsDialog(this.item, this.c);
  @override
  _DetailsDialogState createState() => _DetailsDialogState();
}

class _DetailsDialogState extends State<DetailsDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.padding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(widget.item, context, widget.c),
    );
  }
}

contentBox(ListItem item, context, Color c) {
  return Container(
    child: Stack(children: <Widget>[
      Container(
        padding: EdgeInsets.only(
            left: Constants.padding,
            top: Constants.avatarRadius + Constants.padding,
            right: Constants.padding,
            bottom: Constants.padding),
        margin: EdgeInsets.only(top: Constants.avatarRadius),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: c,
            borderRadius: BorderRadius.circular(Constants.padding),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              item.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              item.content,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 22,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Kész.",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
      Positioned(
        left: Constants.padding,
        right: Constants.padding,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: Constants.avatarRadius,
          child: ClipRRect(
              borderRadius:
                  BorderRadius.all(Radius.circular(Constants.avatarRadius)),
              child: Image.asset(item.image)),
        ),
      )
    ]),
  );
}

class Constants {
  static const double padding = 20;
  static const double avatarRadius = 45;
}
