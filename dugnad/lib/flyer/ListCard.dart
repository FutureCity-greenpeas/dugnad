import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:dugnad/flyer/ListItem.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget ListCard(String imagePath) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.all(20.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit
                .cover, //I assumed you want to occupy the entire space of the card
            image: AssetImage(
              imagePath,
            ),
          ),
        ),
        child: ListTile(
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => {print("pushed")},
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
            ],
          ),
        ),
      ),
    ),
  );
}
