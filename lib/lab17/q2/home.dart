import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Welcome to Home',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
