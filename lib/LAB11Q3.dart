
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
  final arrNames=['Maaz Nadeem','Laiba Mohammad'];
final Image=['assets/images/bird-thumbnail.jpg','assets/images/laiba.jpg'];
  final arrphone=['03212','09889'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListTile')),
        body:ListView.separated(itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading:CircleAvatar(
                 backgroundImage:AssetImage(Image[index]),

              ),
              title:Text(arrNames[index]),
              subtitle: Text(arrphone[index]),
              trailing:IconButton(
                onPressed: (){
                  print('Tile tapped');
                },
                icon:Icon(Icons.phone),
              ),
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
