import 'package:flutter/material.dart';

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
  final arrNames=['Laiba Ali','Maaz Khan','Ali Ayaan'];
  final arrimg=['https://static.vecteezy.com/system/resources/thumbnails/001/993/889/small/beautiful-latin-woman-avatar-character-icon-free-vector.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/001/993/889/small/beautiful-latin-woman-avatar-character-icon-free-vector.jpg','https://static.vecteezy.com/system/resources/thumbnails/001/993/889/small/beautiful-latin-woman-avatar-character-icon-free-vector.jpg'];
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
        body:
        ListView.separated(itemBuilder: (context,index){
          return ListTile(
            leading:
            CircleAvatar(
              backgroundImage:NetworkImage(arrimg[index]),
            ),
            title:Text(arrNames[index]),
            subtitle: Text("msg is here"),
            trailing:
            IconButton(
              onPressed: (){
                print('call ayi hai bhai');
              },
              icon:Icon(Icons.phone)
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

