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
  static const String polarity = '+/-';

  String sum = '';
  var calcHistory = <CalcHistory>[];
  String currentCalcString = '';
  String? error;

  makeNumberAction(String operator) {
    switch (operator) {
      case MyCalculator.equal:
        makeEqual();
        break;
      case MyCalculator.clear:
        clearResults();
        break;
      case MyCalculator.polarity:
        if (currentCalcString.startsWith('(-')) {
          currentCalcString = currentCalcString.replaceFirst('(-', '');
        } else {
          currentCalcString = '(-' + currentCalcString;
        }
        break;
      default:
        currentCalcString += operator;
        break;
    }
  }

  makeEqual() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(currentCalcString);
      ContextModel num = ContextModel();
      sum = exp.evaluate(EvaluationType.REAL, num).toString();
      addHistory(currentCalcString, sum);
      currentCalcString = sum;
    } catch (e) {
      error = e.toString();
    }
  }

  addHistory(String calcString, String result) {
    calcHistory.add(CalcHistory(calcString, result));
  }

  clearResults() {
    sum = '';
    currentCalcString = '';
  }

  clearHistory() {
    calcHistory.clear();
  }
}
