import 'package:flutter/material.dart';
import 'package:flutter_playground/bmicalculator/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBotoomContainerColor,
        margin: EdgeInsets.only(top: 10),
        // padding: EdgeInsets.only(bottom: 20), // не уверен что нужно
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}