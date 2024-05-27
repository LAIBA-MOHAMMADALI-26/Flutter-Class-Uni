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
          height: 100,
          width: 200,
          color: Colors.blue,
          child:Text("I AM LAIBA doing lab 6 of MAD,practicing "
              "flutter lorem ipsum sujd ojakj oMND"
              "ojsdk ajndCKND LAJMD"
            ,
            textDirection:TextDirection.ltr,
            style:  TextStyle(color:Colors.white),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,),

        ),
      ),
      // ],
      // )
    );
  }
}
