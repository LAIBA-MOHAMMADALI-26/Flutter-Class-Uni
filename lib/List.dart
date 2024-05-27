import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    var names = ['laiba', 'maria', 'brainy'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Flutter Container'),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(names[index],
                      style: TextStyle(fontSize: 40, color: Colors.blue)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(names[index],
                          style: TextStyle(fontSize: 40, color: Colors.red)),
                    ),
                    Text(names[index],
                        style: TextStyle(fontSize: 40, color: Colors.green)),
                  ],
                ),
              ],
            );
          },
          itemCount: names.length,
          separatorBuilder: (context, index) {
            return Divider(height: 10, thickness: 3);
          },
        ));
  }
}
