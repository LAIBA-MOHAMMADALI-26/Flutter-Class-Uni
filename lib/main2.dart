import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Containers and Text',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab 7'),
      ),
      body: Center(child: Image.asset('assets/images/bird-thumbnail.jpg',height:400,width:400)),
    );
  }
}
// Text('LOGIN',
// style: TextStyle(
// color: Colors.blue,
// fontSize: 24,
// )
// ),

// IconButton(
// onPressed: () {
// print("Button is pressed");
// },
// icon:const Icon(Icons.add),
//
// )

// child: FloatingActionButton(
// onPressed: () {
// print("Button is pressed");
// },
// child: const Icon(Icons.add),
// )

// FloatingActionButton(
// onPressed: () {
// print("Button is pressed");
// },
// onLongPress:() {
// print("Button is pressed for too long");
// },
// child: const Icon(Icons.add),
// )

