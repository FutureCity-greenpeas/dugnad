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

  List<ListItem> listTiles = [
    ListItem(
      "Kovács János",
      "Jövőhéten szombaton tartunk egy baráti találkozót. Amennyiben túl hangosak lennénk kérem szóljanak! ",
      "Baráti összejövetel szombaton",
      "2021.03.19",
    ),
    ListItem(
      "Nagy József",
      "Felújítjuk a fürdőszobát, így szerda délelőtt lehet hangosak leszünk. Pár óra alatt megvagyunk. Köszi a megértést. ",
      "Felújitás szerdán",
      "2021.03.10",
    ),
    ListItem(
      "Kovács János",
      "Vasárnap megyek pestre. 2 ülés szabad. Sajnos eléggé meg vagyunk pakolva, max 1 hátizsák/fő fér el. ",
      "Fuvar Pestre",
      "2021.03.14",
    ),
    ListItem(
      "Loremion Ipsonát",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec venenatis lacus odio, vel sodales sapien. ",
      "Fuvar Pestre",
      "2020.04.20",
    ),
    ListItem(
      "Kossuth Lajos",
      "Ha valaki arra jár, vehetne nekem egy kis regimentet. ",
      "Üzenet",
      "1848.??.??",
    ),
    ListItem(
      "Thanos Marvel",
      "Tegnap egy szakállas fazon világító mellkassal lerántottam a kesztyűmet és csettintgetve elszaladt. Ha valaki látta kérem értesítsen. ",
      "Bosszút állnék",
      "2019.04.25",
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
          title: Text("Hirök"),
          centerTitle: true,
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
              child: Container(child: ListView()),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Container(
                child: GridView.count(
                  childAspectRatio: 100 / 25,
                  crossAxisCount: 3,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      height: 10,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: listcard(listTiles[index]),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ));
  }
}
