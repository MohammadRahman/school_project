import 'package:flutter/material.dart';
import 'package:my_chat_app/screen/welcome.dart';
import 'package:my_chat_app/screen/login.dart';
import 'package:my_chat_app/screen/registration.dart';
import 'package:my_chat_app/screen/chats.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
