import 'dart:async';

import 'package:final_project/login.dart';
import 'package:flutter/cupertino.dart';
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
    Timer(Duration(seconds:1), () {
      //replaces splash screen after timer
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePAGE()));
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
        child: Center(child: Text('Welcome',style: TextStyle(color: Colors.white),)),),
    );
  }
}

class HomePAGE extends StatelessWidget {
  HomePAGE({super.key});
  var email =TextEditingController();
  var colours =['red','yellow','green','pink'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Column(
      children: [
        Container(
            margin: EdgeInsets.all(20.0),
            child:TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter email',
              ),
            )
        ),
        Expanded(
          child: Container(
            child: ListView.separated(itemBuilder: (context,index){
              return TextButton(
                  onPressed: (){var color = colours[index];
                  String username = email.text.toString();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage(color,username)));
                  },
                  child:Text(colours[index])
              );
            }, separatorBuilder: (context,index){
              return Divider(height: 20,thickness: 2,);
            },
                itemCount: colours.length),
          ),
        ),
      ],
    ),
    );



  }
}

class WelcomePage extends StatelessWidget {
  var color,username;
  WelcomePage(this.color,this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome Screen'),),
      body: Center(child: Container(child: Text('Hello $username,Colour chosen is $color'),)),
    );
  }
}
