import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:dugnad/flyer/WebViewWidget.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ListCard extends StatelessWidget {
  String imagePath;
  String urlPath;

  ListCard(String imagePath, urlPath) {
    this.imagePath = imagePath;
    this.urlPath = urlPath;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: EdgeInsets.all(20.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              //I assumed you want to occupy the entire space of the card
              image: AssetImage(
                this.imagePath,
              ),
            ),
          ),
          child: Row(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewWidget(this.urlPath)))
                  },
                  child: Text(
                    "Olvas",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(HexColor("3E8469")),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
