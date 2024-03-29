import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatefulWidget {
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  double firstNum = 0.0;
  double secondNum = 0.0;
  String operation = '';
  String result = '';

  void buttonClicked(String buttonValue) {
    if (buttonValue == 'C') {
      result = '';
      firstNum = 0.0;
      secondNum = 0.0;
      operation = '';
    } else if (buttonValue == '+' ||
        buttonValue == '-' ||
        buttonValue == 'x' ||
        buttonValue == '/') {
      firstNum = double.parse(result);
      result = '';
      operation = buttonValue;
    } else if (buttonValue == '=') {
      secondNum = double.parse(result);
      if (operation == '+') {
        result = (firstNum + secondNum).toString();
      } else if (operation == '-') {
        result = (firstNum - secondNum).toString();
      } else if (operation == 'x') {
        result = (firstNum * secondNum).toString();
      } else if (operation == '/') {
        result = (firstNum / secondNum).toString();
      }
    } else {
      result = result + buttonValue;
    }
    setState(() {});
  }

Widget buildButton(String buttonValue) {
  return Expanded(
    child: OutlinedButton.icon(
      icon: const SizedBox(), // ใช้ SizedBox ว่างเพื่อไม่ให้มีไอคอน
      label: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          buttonValue,
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
      onPressed: () => buttonClicked(buttonValue),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(
                  vertical: 25.0,
                  horizontal: 15.0,
                ),
                child: Text(
                  result,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Divider(),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      buildButton('7'),
                      buildButton('8'),
                      buildButton('9'),
                      buildButton('/'),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton('4'),
                      buildButton('5'),
                      buildButton('6'),
                      buildButton('x'),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton('1'),
                      buildButton('2'),
                      buildButton('3'),
                      buildButton('-'),
                    ],
                  ),
                  Row(
                    children: [
                      buildButton('C'),
                      buildButton('0'),
                      buildButton('='),
                      buildButton('+'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}