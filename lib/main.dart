import 'package:calculator/service/calculator.dart';
import 'package:calculator/widgets/calcTable_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myCalculator = MyCalculator();

  void _refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Table(
        children: [
          TableRow(children: [
            Text(
              myCalculator.currentCalcString,
              style: const TextStyle(color: Colors.green, fontSize: 30),
              textAlign: TextAlign.right,
            ),
          ]),
          TableRow(children: [
            calcTable(myCalculator, _refresh),
          ])
        ],
      ),
    );
  }
}
