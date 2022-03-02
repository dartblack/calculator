import 'package:flutter/material.dart';

Widget calcNumberButton(String title, Function callback) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        onPrimary: Colors.grey,
        primary: Colors.white24,
        minimumSize: const Size(70, 70),
      ),
      onPressed: () {
        callback(title);
      },
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ));
}
