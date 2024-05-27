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
        SingleChildScrollView(
          child: Column(children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 100,
                      color: Colors.pink,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 100,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 100,
                      color: Colors.purple,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 100,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 100,
                      color: Colors.black,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 100,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 11),
                      width: 100,
                      color: Colors.orangeAccent,
                    ),
                  ],
                ),
              ),
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.pink,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.purple,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.red,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11),
              height: 200,
              color: Colors.blue,
            ),
          ]),
        )
    );


  }

}


