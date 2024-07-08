import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  var numberController = TextEditingController();
  static const String KEYNUMBER = "number";
  var numberValue = "No Value Saved";

  @override
  void initState() {
    super.initState();
    getValue();
  }

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
          TextField(
            controller: numberController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                label: Text('Number'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21))),
          ),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(
            onPressed: () async {
              var number = int.tryParse(numberController.text);
              if (number != null) {
                var prefs = await SharedPreferences.getInstance();
                prefs.setInt(KEYNUMBER, number);
              }
            },
            child: Text("Save"),
          ),
          SizedBox(
            height: 11,
          ),
          Text(numberValue),
        ],
      ),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getNumber = prefs.getInt(KEYNUMBER);
    numberValue = getNumber?.toString() ?? "No Value Saved";
    setState(() {});
  }
}
