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
  final arr=['Cleaning','Plumbering','Mechanic','Electrician','Painter'
    ,'Gardener','Carpenter'];
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
        Container(
          width:double.infinity,
          // height:double.infinity,
          color:Colors.white,
          child:Column(
            children: [
              Text('which service do you need??',
                  style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
              Expanded(
                child: GridView.builder(gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                
                ),
                  itemCount: arr.length,
                  itemBuilder: (context,index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(

                        width: 50,
                        height: 50,

                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child:
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top:20),
                                  child: const Image(
                                    width:100,
                                    height:100,
                                    image: NetworkImage('https://img.freepik.com/free-vector/set-surface-cleaning-products_23-2148534090.jpg'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    arr[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                    );
                
                  },
                ),
              ),

            ],
          ),


        )
    );
  }
}

