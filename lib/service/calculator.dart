import 'package:calculator/models/calc_history.dart';
import 'package:math_expressions/math_expressions.dart';

class MyCalculator {
  static const String plus = '+';
  static const String minus = '-';
  static const String multiply = '*';
  static const String division = '/';
  static const String equal = '=';
  static const String clear = 'C';
  static const String nails = '()';
  static const String percent = '%';

  double sum = 0;
  var calcHistory = <CalcHistory>[];
  String currentCalcString = '';
  String? error;

  makeNumberAction(String number) {
    currentCalcString += number;
  }

  makeMathAction(String operator) {
    switch (operator) {
      case MyCalculator.plus:
      case MyCalculator.minus:
      case MyCalculator.multiply:
      case MyCalculator.division:
        currentCalcString += operator;
        break;
      case MyCalculator.equal:
        makeEqual();
        break;
      case MyCalculator.clear:
        clearResults();
        break;
    }
  }

  makeEqual() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(currentCalcString);
      ContextModel num = ContextModel();
      sum = exp.evaluate(EvaluationType.REAL, num);
      String sumString = sum.toString();
      addHistory(currentCalcString, sumString);
      currentCalcString = sumString;
    } on ArgumentError {
      error = 'Invalid Format';
    } on StateError {
      error = 'Invalid State';
    }
  }

  addHistory(String calcString, String result) {
    calcHistory.add(CalcHistory(calcString, result));
  }

  clearResults() {
    sum = 0;
    currentCalcString = '';
  }

  clearHistory() {
    calcHistory.clear();
  }
}
