import 'dart:async';

import 'package:final_project/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(primaryColor: Colors.blue,),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var password =TextEditingController();
  var email =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    Timer(Duration(seconds:5), () {
      //replaces splash screen after timer
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Splash Screen',style: TextStyle(color: Colors.white)),backgroundColor: Colors.cyan,),
      body: Container(
        color: Colors.cyan,
        width: double.infinity,
        height: double.infinity,
        child: Center(child: Text('Wait for 5 seconds...',style: TextStyle(color: Colors.white),)),),
    );
  }
}

