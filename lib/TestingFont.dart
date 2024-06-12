import 'package:flutter/material.dart';


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
    var arrColors=[
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.orangeAccent,
      Colors.yellow,
      Colors.purpleAccent,
      Colors.purple,
      Colors.indigo,
    ];
    return Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body:
        Text("hello testing Robot Font",style: TextStyle(fontFamily: 'Roboto-black'),)


    );
  }
}

