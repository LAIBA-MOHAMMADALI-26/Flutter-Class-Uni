import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(FlutterApp());
}
class FlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
        )
      ),
        home:HomeScreen(),
    );

  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Center(child:Text('demo')),
      ),
        body:
          Center(
            child: Container(
              width: 200,
              height: 200,
              child: Text('HELLO',style:TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),),
            ),
          )


    );
  }

}


