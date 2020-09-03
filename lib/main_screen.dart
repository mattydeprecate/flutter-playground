import 'package:flutter/material.dart';
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
            pushWidget: ExampleScreen(),
          ),
        ],
      ),
    );
  }
}

class ScreenButton extends StatelessWidget {
  final Widget pushWidget;

  const ScreenButton({
    Key key,
    this.pushWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("1. Пример кода"),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return pushWidget;
            },
          ),
        );
      },
    );
  }
}
