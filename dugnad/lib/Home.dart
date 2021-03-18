import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          width: 500,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              elevation: 5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: ListTile(
                        leading: Icon(Icons.album),
                        title: Text('The Enchanted Nightingale'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(color: Colors.blue),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
