import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Dice"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int leftNum = 1;
  int rightNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftNum = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftNum.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rightNum = Random().nextInt(6) + 1;
              },
              child: Image(
                image: AssetImage('images/dice$rightNum.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
