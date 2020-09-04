import 'package:flutter/material.dart';
import 'package:flutter_playground/calculator/calculator_screen.dart';
import 'package:flutter_playground/dice/dice_screen.dart';
import 'package:flutter_playground/example1_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playground Main Screen"),
      ),
      body: Column(
        children: [
          ScreenButton(
            title: "1. Example",
            pushWidget: ExampleScreen(),
          ),
          ScreenButton(
            title: "2. Dice",
            pushWidget: DiceScreen(),
          ),
          ScreenButton(
            title: "3. Calculator",
            pushWidget: CalculatorScreen(),
          ),
        ],
      ),
    );
  }
}

class ScreenButton extends StatelessWidget {
  final String title;
  final Widget pushWidget;

  const ScreenButton({
    Key key,
    this.title,
    this.pushWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          title,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return pushWidget;
              },
            ),
          );
        },
      ),
    );
  }
}
