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
  var wtcontroller = TextEditingController();
  var ftcontroller = TextEditingController();
  var incontroller = TextEditingController();
  var result = "";
  var bg = Colors.indigo.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body: Container(
        child: Center(
            child: Container(
              color: bg,
              width: 300,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                Text(
                'BMI',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 21,
              ),
              TextField(
                controller: wtcontroller,
                decoration: InputDecoration(
                  label: Text('enter your weight in kg'),
                  prefixIcon: Icon(Icons.line_weight),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: ftcontroller,
                decoration: InputDecoration(
                  label: Text('enter your height in `ZQ3`AA SXfeet'),

                      prefixIcon: Icon(Icons.height),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(



              height: 10,
            ),
            TextField(
              controller: incontroller,
              decoration: InputDecoration(
                label: Text('enter your height in inches'),
                prefixIcon: Icon(Icons.height),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {

                var wt = wtcontroller.text.toString();
                var ft = ftcontroller.text.toString();
                var inc = incontroller.text.toString();
                if (wt != "" && ft != "" && inc != "") {
                  var iwt = int.parse(wt);
                  var ift = int.parse(ft);
                  var Iinch = int.parse(inc);
                  var totalinch = (ift * 12) + Iinch;
                  var tcm = totalinch * 2.54;
                  var total_m = tcm / 100;
                  var bmi = iwt / (total_m * total_m);
                  var msg = "";
                  if (bmi > 25) {
                    msg = "you are overweight";
                    bg = Colors.orange.shade200;
                  } else if (bmi < 18) {
                    msg = "you are under weight";
                    bg = Colors.red.shade300;
                  } else {
                    msg = "you are healthy";
                    bg = Colors.green.shade200;
                  }
                  setState(() {



                    result = "$msg \n your bmi is: ${bmi.toStringAsFixed(2)}";

                  });
                } else {
                  setState(() {

                    result ="please fill all the required fields";

                  });
                }
              },
              child: Text('Calculate'),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              result,
              style: TextStyle(fontSize: 19),
            ),
            ])))));

  }
}