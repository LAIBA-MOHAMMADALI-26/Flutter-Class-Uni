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
          title: Text('Row and Columns Lab',style: TextStyle(fontSize:
          30),),
        ),
        body:
        Center(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text("ths is qndbjq hhdujn"
                        "aihndiohnifnhkfikd klnkann   kbajbd kna"
                        "nlknf NAIBFN",style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center),
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(onPressed: (){
                          print('btn is pressed');
                        },

                            child: Text('click',style:TextStyle(fontSize: 20,backgroundColor: Colors.blue),
                                textAlign: TextAlign.center)

                        ),
                        ElevatedButton(onPressed: (){
                          print('btn is pressed');
                        }, child: Text('click',
                            textAlign: TextAlign.center)

                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),


          ),
        )
    );
  }
}