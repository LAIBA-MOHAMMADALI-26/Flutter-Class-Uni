
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
  final arrNames=['Laiba','Ali','Maria','Sana','Anas'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body:ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading:Text('${index+1}'),
            title:Text(arrNames[index]),
            subtitle: Text("032112333"),
            trailing:Icon(Icons.phone),
          );
        },
          itemCount: arrNames.length,
          separatorBuilder: (context,index){
            return Divider(thickness: 2,height: 20,);
          },
        )

    );
  }
}
