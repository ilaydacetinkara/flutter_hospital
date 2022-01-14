import 'package:flutter/material.dart';

Padding notification(String mesaj, String gecenSure) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          mesaj,
          style: TextStyle(fontSize: 15.0),
        ),
        Text(gecenSure)
      ],
    ),
  );
}
