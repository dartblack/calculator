import 'package:calculator/service/calculator.dart';
import 'package:calculator/widgets/calcButton_widget.dart';
import 'package:flutter/material.dart';

Widget calcTable(MyCalculator myCalculator, Function refresh) {
  return Table(
    children: [
      TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: calcNumberButton(MyCalculator.clear, refresh),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: calcNumberButton(MyCalculator.nails, refresh),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: calcNumberButton(MyCalculator.percent, refresh),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: calcNumberButton(MyCalculator.division, refresh),
          ),
        ],
      ),
      TableRow(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('1', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('2', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('3', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton(MyCalculator.multiply, refresh),
        ),
      ]),
      TableRow(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('4', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('5', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('6', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton(MyCalculator.minus, refresh),
        ),
      ]),
      TableRow(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('7', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('8', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('9', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton(MyCalculator.plus, refresh),
        ),
      ]),
      TableRow(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton(MyCalculator.polarity, refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('0', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton('.', refresh),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: calcNumberButton(MyCalculator.equal, refresh),
        ),
      ])
    ],
  );
}
