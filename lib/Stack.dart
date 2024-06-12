
import 'package:flutter/cupertino.dart';
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
  final arrNames=['Laiba','Ali','Maria','Sana','Anas'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body:Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
            ),
            Positioned(
              top:20,
              left:20,
              bottom: 20,
              right: 20,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            )
          ],

        )

    );
  }
}
