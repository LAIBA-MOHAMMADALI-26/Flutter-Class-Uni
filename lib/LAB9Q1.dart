
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
          backgroundColor: Colors.pinkAccent,
          title: const Text('LAIBA MOHAMMAD ALI',style: TextStyle(fontSize:
          26,color:Colors.white),),
        ),
        body:
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: ()
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('The color is Yellow!'),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundColor: Color(0xffFDCF09),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                      NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),

                InkWell(
                  onTap: ()
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('The color is Blue!'),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.blueAccent,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),


                InkWell(
                  onTap: ()
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('The color is Pink!'),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.pinkAccent,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
                    ),
                  ),
                ),

                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: ()
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('The color is Red!'),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.redAccent,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
                    ),
                  ),
                ),

                const  SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: ()
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('The color is Black!'),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),


                InkWell(
                  onTap: ()
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('The color is Purple!'),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.purpleAccent,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/002/257/small/beautiful-woman-avatar-character-icon-free-vector.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}