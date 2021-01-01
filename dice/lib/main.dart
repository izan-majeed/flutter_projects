import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dice'),
          ),
          backgroundColor: Colors.pink,
        ),
        body: DiceBody(),
      ),
    ),
  );
}

class DiceBody extends StatefulWidget {
  @override
  _DiceBodyState createState() => _DiceBodyState();
}

class _DiceBodyState extends State<DiceBody> {
  int left = 2;
  int right = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  left = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  right = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$right.png'),
            ),
          ),
        ],
      ),
    );
  }
}

