import 'package:flutter/material.dart';

Widget newsRow = Container(
  padding: const EdgeInsets.only(bottom: 5, top: 5),
  child: Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 1),
          child: Expanded(
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.amber,
                      child: Text(
                        'I dont have a \nclue what im1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'I dont have a \nclue what im2',
                        style: TextStyle(fontWeight: FontWeight.bold),
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
