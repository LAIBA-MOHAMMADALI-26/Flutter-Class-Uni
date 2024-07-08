import 'dart:async';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data Page',
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int seconds = 3;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: seconds), () {
      // Replaces splash screen after timer
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lab Task 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        color: Colors.cyan,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'Wait for $seconds seconds...',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  var name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Write your name'
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder:
                      (context)=>DetailScreen(name.text)));},
              child: Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),

    );
  }
}
class DetailScreen extends StatefulWidget {
  var name;
  DetailScreen(this.name);
  @override
  State<DetailScreen> createState() =>
      _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello ! ${widget.name}'),
            ElevatedButton(
              onPressed: (){Navigator.pop(context);},
              child: Text('Go back to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}