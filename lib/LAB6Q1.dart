import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Containers and Text',
      debugShowCheckedModeBanner:false,
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

      // appBar: AppBar(
      //   title: Text('Flutter Containers and Text'),
      // ),

      body:


      Center(
        child: Container(

          child:Text("Hello World",
            textDirection:TextDirection.rtl,
            style:  TextStyle(color:Colors.blue,fontSize: 24),
          ),
        ),
      ),
      // ],
      // )
    );
  }
}
