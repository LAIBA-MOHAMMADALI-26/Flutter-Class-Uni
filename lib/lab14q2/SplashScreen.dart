import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Passing Data Page',
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var seconds = 5;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: seconds), () {
      // Replaces splash screen after timer
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lab Task 2', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple[100],
      ),
      body: Container(
        color: Colors.purple[100],
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text('Wait for $seconds seconds...', style: TextStyle(fontSize: 36, color: Colors.white)),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Home',
      icon: Icon(Icons.home),
    ),
    Tab(
      text: 'Shop',
      icon: Icon(Icons.shopping_cart),
    ),
    Tab(
      text: 'Profile',
      icon: Icon(Icons.person),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: [
            HomeLayout(),
            ShopLayout(),
            ProfileLayout(),
          ],
        ),
      ),
    );
  }
}

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome back!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.pinkAccent)),
        SizedBox(height: 20),
        Text('View our new arrivals', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.pinkAccent)),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemCount: 12,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    'https://img.freepik.com/free-photo/small-purse-studio-still-life_23-2151046497.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Click to Shop Now!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.pinkAccent)),
          ),
        ),
      ],
    );
  }
}

class ShopLayout extends StatelessWidget {
  const ShopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: MasonryGridView.builder(
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: 14,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://img.freepik.com/free-photo/small-purse-studio-still-life_23-2151046497.jpg',
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Colors.purpleAccent,
              child: CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/004/899/680/small/beautiful-blonde-woman-with-makeup-avatar-for-a-beauty-salon-illustration-in-the-cartoon-style-vector.jpg'),
              ),
            ),
          ),
          Text('Welcome back! Laiba', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.purpleAccent)),
          Text('Here are your purchases of the week', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.purpleAccent)),
          Card(
            margin: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      'https://img.freepik.com/free-photo/small-purse-studio-still-life_23-2151046497.jpg',
                      fit: BoxFit.cover,
                      height: 150,
                      width: 100,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Round Neck Sweater', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.pinkAccent)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Rs.20000', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: Colors.pinkAccent)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
