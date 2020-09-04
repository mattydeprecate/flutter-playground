import 'package:flutter/material.dart';
import 'dart:math';

class MagicBallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue.shade900,
      ),
      backgroundColor: Colors.blue,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child:
          Center(child: Image.asset("images/magic_8_ball/ball$ballNumber.png")),
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
          print("I got clicked $ballNumber");
        });
      },
    );
  }
}
