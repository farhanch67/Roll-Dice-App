import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("ROLL DICE"),
        ),
        actions: [
          IconButton(icon:Icon(Icons.play_arrow_outlined,color: Colors.white,), onPressed: null)
        ],
      ),
      body: Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int lds = 1;
  int rds = 1;
  void diceontap() {
    rds = Random().nextInt(6) + 1;
    lds = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: 2,
            child: FlatButton(
              onPressed: () {
                diceontap();
              },
              child: Image.asset(
                'images/dice$lds.png',
              ),
            ),
          ),
          Expanded(
            // flex: 1,
            child: FlatButton(
              onPressed: () {
                diceontap();
              },
              child: Image.asset('images/dice$rds.png'),
            ),
          ),
        ],
      ),
    );
  }
}
