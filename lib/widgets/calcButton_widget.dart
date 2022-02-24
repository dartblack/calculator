import 'package:flutter/material.dart';

Widget calcNumberButton(String title, Function calcFunction, Function refresh) {
  return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(5.0),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            )),
        onPressed: () {
          calcFunction(title);
          refresh();
        },
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ));
}
