

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
  var nameController=TextEditingController();
  static const String KEYNAME="name";
  var NameValue="no value saved";



  @override
  void initState() {
    // TODO: implement initState
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
            controller: nameController,
            decoration: InputDecoration(

                label: Text('name'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21)
                )
            ),
          ),
          SizedBox(
            height: 11,
          ),
          ElevatedButton(onPressed: () async{
            var name=nameController.text.toString();
            var prefs= await SharedPreferences.getInstance();
            prefs.setString(KEYNAME, nameController.text.toString());
          },
              child: Text("Save")),
          SizedBox(
            height:11,
          ),
          Text(NameValue)


        ],
      ),
    );
  }

  void getValue() async {
    var prefs=await SharedPreferences.getInstance();
    var getName=prefs.getString(KEYNAME);
    NameValue=getName ?? "No Value Saved";
    setState(() {

    });
  }
}
