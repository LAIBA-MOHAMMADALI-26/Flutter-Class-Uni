import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RangeSliderExample(),
    );
  }
}

class RangeSliderExample extends StatefulWidget {
  @override
  _RangeSliderExampleState createState() => _RangeSliderExampleState();
}

class _RangeSliderExampleState extends State<RangeSliderExample> {
  RangeValues _currentRangeValues = const RangeValues(20, 80);
  final List<int> _items = List.generate(100, (index) => index + 1);
  List<int> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filterItems();
  }

  void _filterItems() {
    setState(() {
      _filteredItems = _items.where((item) =>
      item >= _currentRangeValues.start &&
          item <= _currentRangeValues.end).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Range Slider Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: RangeSlider(
              values: _currentRangeValues,
              min: 1,
              max: 100,
              divisions: 99,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                  _filterItems();
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredItems[index].toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
