import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeV2 extends StatefulWidget {
  @override
  _HomeV2State createState() => _HomeV2State();
}

class _HomeV2State extends State<HomeV2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home V2 Demo"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return WideLayout();
          } else {
            return NarrowLayout();
          }
        },
      ),
    );
  }
}

class WideLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class NarrowLayout extends StatelessWidget {
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  color: HexColor("3E8469"),
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  elevation: 5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: InkWell(
                            splashColor: Colors.teal.withAlpha(30),
                            onTap: () => {print("asdasd")},
                            child: ListTile(
                              leading: Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "H??RDET??\nT??BLA",
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
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: ColoredBox(
                                      color: Colors.transparent,
                                      child: Column(
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "V??z??ra leolvas??s",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "??rtes??tj??k a kedves\nlak??kat, hogy\n2021.04.05-??n\nv??z??raleolvas??s\nlesz a lak??sban.",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w100),
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
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: ColoredBox(
                                        color: Colors.transparent,
                                        child: Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(5),
                                              width: 180,
                                              height: 130,
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      FittedBox(
                                                        fit: BoxFit.contain,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            FittedBox(
                                                              fit: BoxFit
                                                                  .contain,
                                                              child: Text(
                                                                "K??z??s k??lts??g\nelmarad??sok",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16),
                                                              ),
                                                            ),
                                                            Text(
                                                              "K??rj??k a kedves\nlak??kat, hogy\naz elmarad??sokat\n2021.03.30-ig legynek\nszivesek befizetni",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w100),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: ColoredBox(
                                      color: Colors.transparent,
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(5),
                                            width: 180,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height,
                                            child: Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Esed??kes tev??kenys??g",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16),
                                                        ),
                                                        Text(
                                                          "A havi k??z??ss??gi\ntev??kenys??ggel \nkapcsolatos\nleg??jabb inform??ci??k\nel??rhet??v?? v??ltak.\nRem??lj??k sokatokkal\ntal??lkozunk",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w100),
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
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
