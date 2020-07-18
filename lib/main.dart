import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceOne = 1;
  int diceTwo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: diceRotate,
                  child: Image.asset(
                    'images/dice$diceOne.png',
                  ))),
          Expanded(
              child: FlatButton(
            onPressed: diceRotate,
            child: Image.asset('images/dice$diceTwo.png'),
          )),
        ],
      ),
    );
  }

  void diceRotate() {
    setState(() {
      diceOne = Random.secure().nextInt(6) + 1;
      diceTwo = Random.secure().nextInt(6) + 1;
    });
  }

}
