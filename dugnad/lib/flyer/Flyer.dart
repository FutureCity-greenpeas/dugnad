import 'package:flutter/material.dart';
import 'package:dugnad/flyer/ListCard.dart';

class Flyer extends StatefulWidget {
  @override
  _FlyerState createState() => _FlyerState();
}

class _FlyerState extends State<Flyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('assets/images/lakokor.png'),
                backgroundColor: Colors.transparent,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                "Szórólapok",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Alegreya"),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListCard("assets/images/tesco.png"),
            Text("flyers"),
          ],
        ),
      ),
    );
  }
}
