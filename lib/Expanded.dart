import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text('Expanded')),
        body:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex:2,
              child: Container(
                width: 50,
                height: 50,color: Colors.blue,
              ),
            ),
            Expanded(
              flex:4,
              child: Container(
                width: 50,
                height: 50,color: Colors.yellow,
              ),
            ),
            Expanded(
              flex:3,
              child: Container(
                width: 50,
                height: 50,color: Colors.pink,
              ),
            ),
            Expanded(
              flex:1,
              child: Container(
                width: 50,
                height: 50,color: Colors.green,
              ),
            ),

          ],
        )


    );
  }
}

