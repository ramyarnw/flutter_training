import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/innherit_widget/second_screen.dart';

import 'navigation_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Colors.green,
      ),

      body: Center(
        child: ElevatedButton(
          // showing message variable of our
          // inherited widget class using of()
          child: Text(MyInheritedWidget.of(context).message),
          onPressed: () {
            Navigator.of(context)
            // navigate to second screen
                .push(MaterialPageRoute(builder: (_) => const SecondScreen()));
          },
        ),
      ),
    );
  }
}
