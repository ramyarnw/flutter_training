import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../stateful_widget/chat_page.dart';

class AppChat extends StatelessWidget {
  const AppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
          unselectedItemColor: Colors.blue,
          items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'chat',
          // title: Text("chat"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_work),
          label: 'channel',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'profile',
        ),
      ]),
    );
  }
}
