import 'package:flutter/material.dart';
import 'buttons.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Калькулятор"),
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Colors.blueGrey,
      body: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String currentNumber = "";

  void handleNumberAction(int number) {
    setState(() {
      currentNumber = "$number";
    });
  }

  void handleOperationAction(String operation) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              "Результат: $currentNumber",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NumberButton(
                number: 7,
                handleOnPressed: handleNumberAction,
              ),
              NumberButton(
                number: 8,
                handleOnPressed: handleNumberAction,
              ),
              NumberButton(
                number: 9,
                handleOnPressed: handleNumberAction,
              ),
              OperationButton(
                operation: "x",
                handleOnPressed: handleOperationAction,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NumberButton(
                number: 4,
                handleOnPressed: handleNumberAction,
              ),
              NumberButton(
                number: 5,
                handleOnPressed: handleNumberAction,
              ),
              NumberButton(
                number: 6,
                handleOnPressed: handleNumberAction,
              ),
              OperationButton(
                operation: "/",
                handleOnPressed: handleOperationAction,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NumberButton(
                number: 1,
                handleOnPressed: handleNumberAction,
              ),
              NumberButton(
                number: 2,
                handleOnPressed: handleNumberAction,
              ),
              NumberButton(
                number: 3,
                handleOnPressed: handleNumberAction,
              ),
              OperationButton(
                operation: "-",
                handleOnPressed: handleOperationAction,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              NumberButton(
                number: 0,
                handleOnPressed: handleNumberAction,
              ),
              OperationButton(
                operation: "AC",
                handleOnPressed: handleOperationAction,
              ),
              OperationButton(
                operation: "=",
                handleOnPressed: handleOperationAction,
              ),
              OperationButton(
                operation: "+",
                handleOnPressed: handleOperationAction,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
