import 'package:dugnad/news/listitem.dart';
import 'package:flutter/material.dart';
import 'package:dugnad/news/listCard.dart';

class News extends StatefulWidget {
  News({Key key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with SingleTickerProviderStateMixin {
  List<Tab> _tabList = [
    Tab(
      child: Text("Általános"),
    ),
    Tab(
      child: Text("Közösségi"),
    ),
  ];

  List<ListItem> listCommunityTiles = [
    ListItem(
      "Lakatos Kornélia",
      "Jövőhéten szombaton tartunk egy baráti találkozót. Amennyiben túl hangosak lennénk kérem szóljanak! ",
      "Baráti összejövetel szombaton",
      "2021.03.19",
      "assets/images/woman.jpg",
    ),
    ListItem(
        "Nagy József",
        "Felújítjuk a fürdőszobát, így szerda délelőtt lehet hangosak leszünk. Pár óra alatt megvagyunk. Köszi a megértést. ",
        "Felújitás szerdán",
        "2021.03.10",
        "assets/images/idontremeber.png"),
    ListItem(
        "Kovács János",
        "Vasárnap megyek pestre. 2 ülés szabad. Sajnos eléggé meg vagyunk pakolva, max 1 hátizsák/fő fér el. ",
        "Fuvar Pestre",
        "2021.03.14",
        "assets/images/handsome-middle-aged-man.jpg"),
    ListItem(
        "Loremion Ipsonát",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec venenatis lacus odio, vel sodales sapien. ",
        "Latin oktatást vállalok",
        "2020.04.20",
        "assets/images/milk.jpg"),
    ListItem(
        "Kossuth Lajos",
        "Ha valaki arra jár, vehetne nekem egy kis regimentet. ",
        "Üzenet",
        "1848.??.??",
        "assets/images/kossuth_lajos.jpg"),
    ListItem(
        "Vajda Thanos",
        "Tegnap egy hippi szakállas fazon világító mellkassal lerántottam a kesztyűmet és csettintgetve elszaladt. Ha valaki látta kérem értesítsen. ",
        "Bosszútállnék",
        "2019.04.25",
        "assets/images/thanos.jpg"),
  ];

  List<ListItem> listGeneralTiles = [
    ListItem(
        "Seres Jákob",
        "Értesítjük a kedveslakókat, hogy 2021.04.05-én vízóra leolvasás lesz a lakásban.",
        "Vízóra leolvasás",
        "2021.04.01",
        "assets/images/kepx.jpg"),
    ListItem(
      "Seres Jákob",
      "Kérjük a kedves lakókat, hogy az elmaradásokat 2021.03.30-ig legynek szivesek befizetni",
      "Közös költség elmaradások",
      "2021.03.23",
      "assets/images/kepx.jpg",
    ),
    ListItem(
      "Seres Jákob",
      "A havi közösségi tevékenységgel kapcsolatos legújabb információk elérhetővé váltak. Reméljük sokatokkal találkozunk",
      "Esedékes tevékenység",
      "2021.0.01",
      "assets/images/kepx.jpg",
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabList.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Hírdetőtábla"),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30.0),
            child: TabBar(
              indicatorColor: Colors.green[900],
              isScrollable: false,
              controller: _tabController,
              tabs: _tabList,
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                  child: ListView(
                children: List.generate(3, (index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: listcard(listGeneralTiles[index], context),
                    ),
                  );
                }),
              )),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: LayoutBuilder(
                builder: (context, constraint) {
                  if (constraint.maxWidth > 500) {
                    return Container(
                      child: GridView.count(
                        childAspectRatio: 100 / 25,
                        crossAxisCount: 3,
                        children: List.generate(6, (index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: listcard(listCommunityTiles[index],
                                  context, constraint),
                            ),
                          );
                        }),
                      ),
                    );
                  } else {
                    return Container(
                      child: ListView(
                        children: List.generate(6, (index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: listcard(listCommunityTiles[index],
                                  context, constraint),
                            ),
                          );
                        }),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
