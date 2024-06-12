
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListTile')),
        body:ListView.separated(itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading:CircleAvatar(
            backgroundColor:Colors.purple,
                child:Text('MD',style:TextStyle(color:Colors.white))
              ),
              title:Text('Maaz Nadeem'),
              // subtitle: Text(arrphone[index]),
              trailing:Icon(Icons.arrow_forward),
            ),
          );
        },
          itemCount: 1,
          separatorBuilder: (context,index){
            return Divider(thickness: 2,height: 20,);
          },
        )

    );
  }
}
