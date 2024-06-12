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
  final array=['Row 1','Row 2','Row 3','Row 4','Row 5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body:ListView.separated(itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container( width:double.infinity,
              height: 50,

              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left :8.0,top:13.0),
                child: Text(array[index],style:TextStyle(color:Colors.white,fontFamily: 'Space Grotesk',fontSize: 14)),
              ),),
          );
        },
          itemCount: array.length,
          separatorBuilder: (context,index){
            return Divider(thickness: 2,height: 20,);
          },
        )

    );
  }
}
