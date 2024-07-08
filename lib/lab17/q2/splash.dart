import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';
// import 'dart:async';
import 'home.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN="login";
  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }

  void whereToGo() async {
    var sharedPref=await SharedPreferences.getInstance();
  var isLoggedIn= sharedPref.getBool(KEYLOGIN);
    Timer(Duration(seconds: 3), () {
      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
        else{
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        }
      }
      else{
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      }

    });
  }
}
