import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BMIHomePage(),
    );
  }
}

class BMIHomePage extends StatefulWidget {
  @override
  _BMIHomePageState createState() => _BMIHomePageState();
}

class _BMIHomePageState extends State<BMIHomePage> {
  double height = 170; // default height in centimeters
  double weight = 70; // default weight in kilograms
  double bmi = 0;

  void calculateBMI() {
    setState(() {
      bmi = weight / ((height / 100) * (height / 100));
    });
  }

  String getBMIStatus(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Calculate Your BMI',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Height (cm): $height'),
            Slider(
              value: height,
              min: 100,
              max: 250,
              divisions: 150,
              label: height.toString(),
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
            Text('Weight (kg): $weight'),
            Slider(
              value: weight,
              min: 30,
              max: 150,
              divisions: 120,
              label: weight.toString(),
              onChanged: (value) {
                setState(() {
                  weight = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculateBMI();
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            Text(
              'Your BMI: ${bmi.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'BMI Category: ${getBMIStatus(bmi)}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
