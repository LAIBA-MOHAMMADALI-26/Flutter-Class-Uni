
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
  final arrNames=['Maaz Nadeem','Laiba Mohammad','Ali Liaquat','Maria Khan','Sana Khan','Muazzam Khan'];
  final arrinit=['MD','LM','Al','MK','SA','MK'];
  final arrphone=['03212','09889','77889','99890','99988','09456'];
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
                  child:Text(arrinit[index],style:TextStyle(color:Colors.white))
              ),
              title:Text(arrNames[index]),
              subtitle: Text(arrphone[index]),
              trailing:Icon(Icons.arrow_forward),
            ),
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
