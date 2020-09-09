import 'package:flutter/material.dart';
import 'package:flutter_playground/main_screen.dart';

void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      home: MainScreen(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => ExampleScreen(),
      // },
    );
  }
}
