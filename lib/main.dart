import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/flash_chat/screens/chat_screen.dart';
import 'package:flutter_playground/flash_chat/screens/login_screen.dart';
import 'package:flutter_playground/flash_chat/screens/registration_screen.dart';
import 'package:flutter_playground/main_screen.dart';
import 'package:flutter_playground/todoey/models/task_data.dart';
import 'package:provider/provider.dart';
import 'flash_chat/screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskData()),
      ],
      child: InitialScreen(),
    ),
  );
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      // home: MainScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
