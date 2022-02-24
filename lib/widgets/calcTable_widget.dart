import 'package:calculator/service/calculator.dart';
import 'package:calculator/widgets/calcButton_widget.dart';
import 'package:flutter/material.dart';

Widget calcTable(MyCalculator myCalculator, Function refresh) {
  return Table(
    children: [
      TableRow(children: [
        calcNumberButton(
            MyCalculator.clear, myCalculator.makeMathAction, refresh),
        calcNumberButton(
            MyCalculator.nails, myCalculator.makeMathAction, refresh),
        calcNumberButton(
            MyCalculator.percent, myCalculator.makeMathAction, refresh),
        calcNumberButton(
            MyCalculator.division, myCalculator.makeMathAction, refresh),
      ]),
      TableRow(children: [
        calcNumberButton('1', myCalculator.makeNumberAction, refresh),
        calcNumberButton('2', myCalculator.makeNumberAction, refresh),
        calcNumberButton('3', myCalculator.makeNumberAction, refresh),
        calcNumberButton(
            MyCalculator.multiply, myCalculator.makeMathAction, refresh),
      ]),
      TableRow(children: [
        calcNumberButton('4', myCalculator.makeNumberAction, refresh),
        calcNumberButton('5', myCalculator.makeNumberAction, refresh),
        calcNumberButton('6', myCalculator.makeNumberAction, refresh),
        calcNumberButton(
            MyCalculator.minus, myCalculator.makeMathAction, refresh),
      ]),
      TableRow(children: [
        calcNumberButton('7', myCalculator.makeNumberAction, refresh),
        calcNumberButton('8', myCalculator.makeNumberAction, refresh),
        calcNumberButton('9', myCalculator.makeNumberAction, refresh),
        calcNumberButton(
            MyCalculator.plus, myCalculator.makeMathAction, refresh),
      ]),
      TableRow(children: [
        calcNumberButton('+/-', myCalculator.makeNumberAction, refresh),
        calcNumberButton('0', myCalculator.makeNumberAction, refresh),
        calcNumberButton('.', myCalculator.makeNumberAction, refresh),
        calcNumberButton(
            MyCalculator.equal, myCalculator.makeMathAction, refresh),
      ])
    ],
  );
}
