import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
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
        backgroundColor: Colors.grey,
        title: Text('Flutter Container'),
      ),
      body:
      InkWell(
        onTap: (){
          print('Tapped on container');
        },
        onLongPress:(){
          print("lONG PRESS ON container");
        },

        child: Container(
          width:400,
          height: 400,
          color: Colors.blue,
          child: InkWell(
              onTap:(){
                print('text is tapped');
              },
              child: Center(child: Text('text',style: TextStyle(fontSize: 20),))),


        ),
      ),

    );
  }
}
