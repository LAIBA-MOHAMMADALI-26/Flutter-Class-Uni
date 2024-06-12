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
      body: Column(
        children: [
          // 7 rows of different colors

          Container(
            height: 100,
            color: Colors.white,
            width: double.infinity,
          ),

          Container(
            height: 100,
            color: Colors.red,
            width: double.infinity,
          ),

          Container(
            height: 100,
            color: Colors.green,
            width: double.infinity,
          ),
          Container(
            height: 100,
            color: Colors.blue,
            width: double.infinity,
          ),
          Container(
            height: 100,
            color: Colors.orange,
            width: double.infinity,
          ),

          // 6th row with four containers horizontally
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.purple,
                  height: 80.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink,
                  height: 80.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 80.0,
                  width: double.infinity,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 80.0,
                  width: double.infinity,
                ),
              ),
            ],
          ),
          Container(
            height: 100,
            color: Colors.grey.shade300,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
