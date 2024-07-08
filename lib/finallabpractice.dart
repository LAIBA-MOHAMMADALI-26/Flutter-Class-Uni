import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STACK',
      theme: ThemeData(primaryColor: Colors.blue,),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('stack'),backgroundColor: Colors.cyan,),
      body:
      Container(
        child: GridView.count(crossAxisCount: 5,
          crossAxisSpacing:20,
          mainAxisSpacing: 30,
          children: [
          Container(
          child: Container(color: Colors.cyan,
          child:Text('A',style: TextStyle(fontSize: 50,),),),),
      Container(



      child: Container(color: Colors.pinkAccent,
      child:Text('B',style: TextStyle(fontSize: 50,),),),),
    Container(
    child: Container(color: Colors.green,
    child:Text('C',style: TextStyle(fontSize: 50,),),),),
    Container(
    child: Container(color: Colors.yellow,
    child:Text('D',style: TextStyle(fontSize: 50,),),),),
    Container(
    child: Container(color: Colors.teal,
    child:Text('E',style: TextStyle(fontSize: 50,),),),),
    Container(
    child: Container(color: Colors.purpleAccent,
    child:Text('F',style: TextStyle(fontSize: 50,),),),),
    Container(
    child: Container(color: Colors.brown,
    child:Text('G',style: TextStyle(fontSize: 50,),),),),

    ],

    ),
    )


    );
  }
}