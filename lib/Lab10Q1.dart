import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  final array=['Item 1','Item 2','Item 3','Item 4','Item 5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ListView.Separated Example',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,),
        body:ListView.separated(itemBuilder:(context,index) {
          return
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),


                    ),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(top:20,left: 20),
                    child: Text(array[index],style: TextStyle(color: Colors.white,fontFamily: 'Roboto-black'),),
                  )
                ),
            );

           
        },
    itemCount: array.length,

            separatorBuilder: (context,index){
          return Divider(thickness: 6,height: 20,);
            },


    ) ,
    );
  }
}
