import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Color color;
  final String title;
  final void Function() handleOnPressed;

  const CalculatorButton(
      {Key key, this.title, this.color, this.handleOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.all(0),
        onPressed: handleOnPressed,
        child: Container(
          margin: EdgeInsets.all(4),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.black, width: 4),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final int number;
  final void Function(int number) handleOnPressed;

  const NumberButton({
    Key key,
    this.number,
    this.handleOnPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      title: "$number",
      color: Colors.orange,
      handleOnPressed: () {
        handleOnPressed(number);
      },
    );
  }
}

class OperationButton extends StatelessWidget {
  final String operation;
  final void Function(String operation) handleOnPressed;

  const OperationButton({
    Key key,
    this.operation,
    this.handleOnPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalculatorButton(
      title: operation,
      color: Colors.yellow,
      handleOnPressed: () {
        handleOnPressed(operation);
      },
    );
  }
}