import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      theme: ThemeData(primaryColor: Colors.blue,),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var password =TextEditingController();
  var email =TextEditingController();

  void getData(){
    String username = email.text.toString();
    String pass = password.text.toString();
    print('name : $username');
    print('password : $pass');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lab Task')),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(20.0),
              child:TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter email',
                ),
              )
          ),
          Container(
              margin: EdgeInsets.all(20.0),
              child:TextField(
                controller: password,
                obscuringCharacter: '*',
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                ),
              )
          ),
          Container(
              margin: EdgeInsets.all(20.0),
              child:ElevatedButton(
                onPressed: (){
                  String username = email.text.toString();
                  String pass = password.text.toString();
                  //print('name : $username');
                  //print('password : $pass');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(username,pass)));
                },
                child : Text('Login'),
              )

          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  var fromhome,password;
  HomePage(this.fromhome,this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello $fromhome'),
            Text('username : $fromhome'),
            Text('Password: $password'),
            Text('Welcome back')
          ],
        ),
      ),
    );
  }
}
