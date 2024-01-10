import 'package:flutter/material.dart';

Widget brandName() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Wall", style: TextStyle(color: Colors.black87)),
      Text("Bee", style: TextStyle(color: Colors.blue)),
    ],
  );
}
