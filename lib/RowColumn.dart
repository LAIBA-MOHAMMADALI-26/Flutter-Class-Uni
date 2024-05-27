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
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.lightBlue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            )
            // Container(
            //   color: Colors.orange,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.stretch,
            //     children: [
            //       Text('A', style: TextStyle(color: Colors.orange)),
            //       Text('B', style: TextStyle(color: Colors.pink)),
            //       Text('C', style: TextStyle(color: Colors.yellow)),
            //       Text('D', style: TextStyle(color: Colors.blue)),
            //       ElevatedButton(onPressed:(){
            //         print('btn is pressed');
            //       }, child:Text('Click me'))
            //     ],
            //   ),
            // )
            // Container(
            //   width: 50,
            //   height: 100,
            //   color:Colors.yellow,
            //   child: Center(child: Text('cont 1')),
            // ),
            // Container(
            //   width: 50,
            //   height: 100,
            //   color:Colors.orange,
            //   child: Center(child: Text('cont 1')),
            // ),
            // Container(
            //   width: 50,
            //   height: 100,
            //   color:Colors.blue,
            //   child: Center(child: Text('cont 1')),
            // ),
          ],
        ),
      ),
    );
  }
}
