import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.network('https://marketplace.canva.com/EAE3NoV0pm0/1/0/900w/canva-live-in-the-moment-quote-sunset-floral-phone-wallpaper-mg3EIAS3gP0.jpg',

                  fit: BoxFit.cover)


              ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color:Colors.transparent,
                    child: Center(child: Text('Hello to Stack Lab',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),

                  ),
                ),

            ],
          ),
        ),
      ),
    );
  }
}
