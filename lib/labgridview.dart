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
    return Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body:GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,mainAxisSpacing: 10,crossAxisSpacing: 10),
          itemCount: 50,
          itemBuilder: (BuildContext context,index){
            return Container(color: Colors.greenAccent,);
          },
          //main axis is vertical and cross axis is column
          //same as Row Widget

          //for extent
          // maxCrossAxisExtent: 50,//lesser this number ,more elements in one row
          // //greater this number ,lesser elements in one row
          //
          // children: [
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(color: Colors.blue,width: 100,height: 100,),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(color: Colors.blue,width: 100,height: 100,),
          //   ),
          //
          //],
        )

    );
  }
}
