import 'package:flutter/material.dart';
import 'package:dugnad/Home.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green,
          //fontFamily: 'Alegreya',
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: HexColor("253334"),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: HexColor("253334")),
      home: MyHomePage(title: 'Lakó-kör'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                widget.title,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Alegreya"),
              ),
            ),
          ],
        ),
      ),
      body: HomeScreen(),
    );
  }
}
