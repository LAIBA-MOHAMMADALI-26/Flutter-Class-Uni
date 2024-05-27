import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Flutter Container'),
        ),

        body:
        Column(
          children: [
            Container(
              child: TextButton(
                  onPressed: (){
                    print('text btn is pressed');
                  },
                  child:Text('Text Btn')
              ),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: (){
                    print('Elevated btn is pressed');
                  },
                  child:Text('Elevated Btn')
              ),
            ),
            Container(
              child: OutlinedButton(
                  onPressed: (){
                    print('Outlined btn is on pressed');
                  },
                  onLongPress: (){
                    print("Outlined btn is on long pressed");
                  },
                  child:Text('Outlined Btn')
              ),
            ),
            Container(
              child: IconButton(
                onPressed: (){
                  print('Icon btn is pressed');
                },

                icon:Icon (Icons.add),
              ),
            ),

            Center(
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/laiba.jpg'),
              ),
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: Image.network('https://i0.wp.com/css-tricks.com/wp-content/uploads/2022/08/flutter-clouds.jpg?fit=1200%2C600&ssl=1'),
              ),
            ),


          ],
        )





    );
  }
}
