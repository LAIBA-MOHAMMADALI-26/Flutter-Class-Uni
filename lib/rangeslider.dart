import 'package:flutter/material.dart';
import 'dart:async';

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
      theme: ThemeData(),
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
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          title: Text('range slider'),
        ),
        body: Center(
            child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 10,
          min: 0,
          max: 100,
          activeColor: Colors.pink,
          inactiveColor: Colors.purple,
          onChanged: (newValue) {
            values = newValue;
            print('${newValue.start},${newValue.end}');
            setState(() {});
          },
        )));
  }
}
