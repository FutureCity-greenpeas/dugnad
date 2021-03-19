import 'package:flutter/material.dart';


class Travel extends StatefulWidget {
  Travel({Key key}) : super(key: key);

  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Közös utazas';
    return Scaffold(
  appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFF253334),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/utazas.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}

