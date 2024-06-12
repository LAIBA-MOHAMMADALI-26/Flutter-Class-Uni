import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Calculator',
      theme: ThemeData.dark(), // Use the dark theme for a black background
      home: CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatefulWidget {
  @override
  _CalculatorHomePageState createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  String _output = "0";
  String _display = "0";
  String _operand = "";
  double _num1 = 0;
  double _num2 = 0;
  bool _shouldClearOutput = false;

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "CLEAR") {
        _output = "0";
        _display = "0";
        _num1 = 0;
        _num2 = 0;
        _operand = "";
        _shouldClearOutput = false;
      } else if (buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "x") {
        if (_operand.isEmpty) {
          _num1 = double.parse(_output);
        } else {
          _num2 = double.parse(_output);
          _output = _calculate().toString();
          _num1 = double.parse(_output);
        }
        _operand = buttonText;
        _shouldClearOutput = true;
        _display = _formatOutput(_num1.toString()) + " " + _operand;
      } else if (buttonText == ".") {
        if (!_output.contains(".")) {
          _output += buttonText;
          _display += buttonText;
        }
      } else if (buttonText == "=") {
        _num2 = double.parse(_output);
        _output = _calculate().toString();
        _display = _formatOutput(_output);
        _num1 = 0;
        _num2 = 0;
        _operand = "";
        _shouldClearOutput = false;
      } else {
        if (_shouldClearOutput) {
          _output = buttonText;
          _shouldClearOutput = false;
        } else {
          if (_output == "0") {
            _output = buttonText;
          } else {
            _output += buttonText;
          }
        }
        _display = _output;
        if (_operand.isNotEmpty) {
          _display = _formatOutput(_num1.toString()) + " " + _operand + " " + _output;
        }
      }
    });
  }

  double _calculate() {
    switch (_operand) {
      case "+":
        return _num1 + _num2;
      case "-":
        return _num1 - _num2;
      case "x":
        return _num1 * _num2;
      case "/":
        return _num1 / _num2;
      default:
        return 0.0;
    }
  }

  String _formatOutput(String output) {
    if (output.contains('.')) {
      List<String> parts = output.split('.');
      if (parts[1] == "0") {
        return parts[0];
      }
    }
    return output;
  }

  Widget _buildButton(String buttonText, {Color color = Colors.white}) {
    bool isOperator = buttonText == "+" || buttonText == "-" || buttonText == "x" || buttonText == "/";
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: isOperator ? Colors.orange : Colors.black,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap: () => _buttonPressed(buttonText),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(fontSize: 20.0, color: color),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Simple Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(
              vertical: 24.0,
              horizontal: 12.0,
            ),
            child: Text(
              _display,
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      _buildButton("7"),
                      _buildButton("8"),
                      _buildButton("9"),
                      _buildButton("/"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _buildButton("4"),
                      _buildButton("5"),
                      _buildButton("6"),
                      _buildButton("x"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _buildButton("1"),
                      _buildButton("2"),
                      _buildButton("3"),
                      _buildButton("-"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _buildButton("."),
                      _buildButton("0"),
                      _buildButton("00"),
                      _buildButton("+"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _buildButton("CLEAR"),
                      _buildButton("="),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
