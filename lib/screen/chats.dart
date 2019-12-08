import 'package:flutter/material.dart';
import 'package:my_chat_app/screen/welcome.dart';

class ChatScreen extends StatefulWidget {
  static String id = 'chats';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pushNamed(context, WelcomeScreen.id);
              }),
        ],
        title: Text('Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
