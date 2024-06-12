
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'flutter demo',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch:Colors.lightBlue,
      ),
      home:const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key?key}):super(key:key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Tappable Circle Avatar',style: TextStyle(fontSize:
        26,color:Colors.white),),
      ),
      body:
      Center(

        child: Container(
          child:
          InkWell(
            onTap:(){
              print('hello');
            },
            child: const CircleAvatar(
              radius: 55,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 50,
                backgroundImage:NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
              ),
            ),
          ),
        ),
      ),


    );
  }
}