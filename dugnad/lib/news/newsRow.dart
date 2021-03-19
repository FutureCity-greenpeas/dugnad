import 'package:flutter/material.dart';

class NewsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            elevation: 5,
            child: InkWell(
              splashColor: Colors.green.shade400.withAlpha(30),
              onTap: () {
                print("ügyes vagy paraszt");
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: AspectRatio(
                      aspectRatio: 100 / 30,
                      child: Container(
                        child: ListTile(
                          leading: Icon(Icons.album),
                          title: Text('Vízóra leolvasás 2020.03.14'),
                          subtitle: Text(
                              '2020.03.14.-én vízóra leolvasás történik az épületben'),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      color: Colors.blue,
                      child: Text('ToBeDone'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
