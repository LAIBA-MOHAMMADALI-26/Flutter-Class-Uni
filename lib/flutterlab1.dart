//text methods :
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Containers and Text',
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

      appBar: AppBar(
        title: Text('Flutter Containers and Text'),
      ),

      body:// Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      // Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.blueGrey,
      //   child: const Center(child: Text("jsnd",style:TextStyle(
      //     fontSize:50,
      //     fontWeight:FontWeight.bold,
      //   ),)),
      // ),
      // Container(
      //   width: 100,
      //   height: 100,
      //   color: Colors.greenAccent,
      //   child: const Text("pkodnwdj",textAlign: TextAlign.right,),
      // )




      Container(
        // width: 100,
        // height: 100,
        color: Colors.blue,
        alignment: Alignment.bottomRight,
        child:Text("Bottom Right",
          textDirection:TextDirection.rtl,
          style: TextStyle(color:Colors.white,),
        ),
      ),
      // ],
      // )
    );
  }
}
