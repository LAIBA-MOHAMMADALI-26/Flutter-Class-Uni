import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'LAIBA MOHAMMAD ALI',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pink,

        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                    // borderRadius: BorderRadius.circular(20),
              border:Border.all(
                width: 10,
                color: Colors.purple,
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                color: Colors.grey,
                spreadRadius: 10)
              ],
              shape:BoxShape.circle
            ),
            height: 100,

            width:100
          ),
        ),

      )
    );
  }
}
