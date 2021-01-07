import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ExampleProviderData(),
      child: Scaffold(
        appBar: AppBar(
          title: MyText(),
        ),
        body: Level1(),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<ExampleProviderData>(context).data);
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(context.watch<ExampleProviderData>().data);
    // return Text(context.read<ExampleProviderData>().data);
  }
}

class MyTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (newText) {
        context.read<ExampleProviderData>().changeString(newText);
      },
    );
  }
}

class ExampleProviderData extends ChangeNotifier {
  String data = "Some data";

  void changeString(String newString) {
    data = newString;
    notifyListeners();
  }
}
