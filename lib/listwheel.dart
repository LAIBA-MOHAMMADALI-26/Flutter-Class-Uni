import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Wheel',
      theme: ThemeData(primaryColor: Colors.blue,),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var arrList = [
    'laiba',
    'ali',
    'moin',
    'maheen',
    'maria',
    'sara',
    'maaz',
    'aisha',
    'waqas',''
        'abiha',
    'bilal','kulsoom','farzana','rizwan','ubaid','ashraf','memona'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List Wheel'),backgroundColor: Colors.cyan,),
        body: ListWheelScrollView(
            itemExtent: 100,
            children: arrList.map((value) =>
                Padding(padding: EdgeInsets.all(8.0),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber,
                      ),
                      child:Center(child: Text(value,style: TextStyle(fontSize: 24),),)),
                )
            ).toList(),
            ),
       );
   }
}