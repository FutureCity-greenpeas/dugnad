import 'package:flutter/material.dart';

class Flyer extends StatefulWidget {
  @override
  _FlyerState createState() => _FlyerState();
}

class _FlyerState extends State<Flyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("flyers"),
          ],
        ),
      ),
    );
  }
}
