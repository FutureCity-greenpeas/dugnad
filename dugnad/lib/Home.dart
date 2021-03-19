import 'package:dugnad/markets/market.dart';
import 'package:dugnad/news/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dugnad/grocery/Grocery.dart';
import 'package:dugnad/travel/Travel.dart';
import 'package:dugnad/service/Service.dart';
import 'package:dugnad/flyer/Flyer.dart';
import 'package:dugnad/community/Community.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              width: 500,
              height: 500,
              child: Card(
                color: HexColor("3E8469"),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                elevation: 5,
                child: InkWell(
                  splashColor: Colors.teal.withAlpha(30),
                  onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => News()))
                      },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: ListTile(
                            leading: Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 13),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "HÍRDETŐTÁBLA",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      width: 180,
                                      height: 130,
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Vízóra leolvasás",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    "Értesítjük a kedves\nlakókat, hogy\n2021.04.05-én\nvízóraleolvasás\nlesz a lakásban.",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w100),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      width: 180,
                                      height: 130,
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Közös költség\nelmaradások",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                "Kérjük a kedves\nlakókat, hogy\naz elmaradásokat\n2021.03.30-ig legynek\nszivesek befizetni",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Esedékes tevékenység",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16),
                                                  ),
                                                  Text(
                                                    "A havi közösségi\ntevékenységgel \nkapcsolatos\nlegújabb információk\nelérhetővé váltak.\nReméljük sokatokkal\ntalálkozunk",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w100),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      splashColor: Colors.teal.withAlpha(30),
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Grocery()))
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 100,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            color: HexColor("FFD2D2"),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            elevation: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Közös Bevásárlás",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: HexColor("253334"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      splashColor: Colors.teal.withAlpha(30),
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Travel()))
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 100,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            color: HexColor("69B09C"),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            elevation: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Közös Utazás",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      splashColor: Colors.teal.withAlpha(30),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Markets(slider: -1)))
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 100,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            color: HexColor("6AAE72"),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            elevation: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Közeli Üzletek",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      splashColor: Colors.teal.withAlpha(30),
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Service(slider:1800)))
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 100,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            color: HexColor("A9D571"),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            elevation: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Közeli Szolgáltatások",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: HexColor("253334"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      splashColor: Colors.teal.withAlpha(30),
                      onTap: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Flyer()))
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 100,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            color: HexColor("3E8469"),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            elevation: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Szórólapok",
                                  style: TextStyle(fontWeight: FontWeight.w300),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      splashColor: Colors.teal.withAlpha(30),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Community()))
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        width: 100,
                        height: 140,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Card(
                            color: HexColor("FFD2D2"),
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            elevation: 5,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Közösségi\ntevékenység",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: HexColor("253334"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
