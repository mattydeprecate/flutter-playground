import 'package:flutter/material.dart';
import 'package:flutter_playground/calculator/calculator_screen.dart';
import 'package:flutter_playground/dice/dice_screen.dart';
import 'package:flutter_playground/example1_screen.dart';
import 'package:flutter_playground/magic_8_ball/magic_ball_screen.dart';
import 'package:flutter_playground/mi_card/mi_card_screen.dart';
import 'package:flutter_playground/quizzler/quizzler_screen.dart';
import 'package:flutter_playground/story/story_screen.dart';
import 'package:flutter_playground/xylophone/xylophone_screen.dart';

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
            widget: ExampleScreen(),
          ),
          ScreenButton(
            title: "2. Dice",
            widget: DiceScreen(),
          ),
          ScreenButton(
            title: "3. Calculator",
            widget: CalculatorScreen(),
          ),
          ScreenButton(
            title: "4. Story",
            widget: StoryScreen(),
          ),
          ScreenButton(
            title: "5. MiCard",
            widget: MiCardScreen(),
          ),
          ScreenButton(
            title: "6. Magic Ball",
            widget: MagicBallScreen(),
          ),
          ScreenButton(
            title: "7. Quizzler",
            widget: QuizzlerScreen(),
          ),
          ScreenButton(
            title: "8. Xylophone",
            widget: XylophoneScreen(),
          ),
        ],
      ),
    );
  }
}

class ScreenButton extends StatelessWidget {
  final String title;
  final Widget widget;

  const ScreenButton({
    Key key,
    this.title,
    this.widget,
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
                return widget;
              },
            ),
          );
        },
      ),
    );
  }
}
