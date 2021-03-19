import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  Community({Key key}) : super(key: key);

  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
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
    final title = 'Közös tevékenység';
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
                "Közös tevékenység",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Alegreya"),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/tevekeny.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}
