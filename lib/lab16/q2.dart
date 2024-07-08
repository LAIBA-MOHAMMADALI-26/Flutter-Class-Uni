import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorPickerExample(),
    );
  }
}

class ColorPickerExample extends StatefulWidget {
  @override
  _ColorPickerExampleState createState() => _ColorPickerExampleState();
}

class _ColorPickerExampleState extends State<ColorPickerExample> {
  final List<Color> _colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.grey,
    Colors.cyan,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Color Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              onSelectedItemChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              childDelegate: ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: _colors[index],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Color ${index + 1}',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
                childCount: _colors.length,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 100,
            width: 100,
            color: _colors[_selectedIndex],
            alignment: Alignment.center,
            child: Text(
              'Selected Color',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
