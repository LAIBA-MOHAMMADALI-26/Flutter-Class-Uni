import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar
            (title: Text('Simple Grid View Example',
            style: TextStyle(color:Colors.white),
          ),
            backgroundColor: Colors.blue,),
        body:
          GridView.builder(gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of columns
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,

          ),
            itemCount: 100,
            itemBuilder: (context,index)
             {
               return Container(
                 width: 100,
                 height: 100,

                 child: Center(
                   child: Text(
                     "Item " "${index+1}",style: TextStyle(color: Colors.white,backgroundColor:Colors.green),
                   ),
                 ),
               );

                         },
          )
      ),
    );
  }
}
