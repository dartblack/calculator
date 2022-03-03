import 'package:flutter/material.dart';

Widget calcNumberButton(String title, Function callback,
    {Color color = Colors.white, Color buttonColor = Colors.white24}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        onPrimary: Colors.grey,
        primary: buttonColor,
        minimumSize: const Size(70, 70),
      ),
      onPressed: () {
        callback(title);
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        textAlign: TextAlign.center,
      ));
}
