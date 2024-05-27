// MARIA ASHFAQ(SE-21005)
//LAIBA MOHAMMAD ALI(SE-21010)
//AQSA ZAIB(SE-21013)
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Lab 7'),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int dice_no = 1;
  int dice_no2 = 1;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer from 0 to n-1
      dice_no = Random().nextInt(6) + 1;
      dice_no2 = Random().nextInt(6) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {update();},
              child: Image.asset('assets/images/dice$dice_no2.png',height:150,width:150)
          ),
          TextButton(
              onPressed: () {update();},
              child: Image.asset('assets/images/dice$dice_no.png',height:150,width:150)
          ),
        ],
      ),
    );

  }
}
