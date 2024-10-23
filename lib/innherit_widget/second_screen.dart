import 'package:flutter/material.dart';

import 'navigation_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Text('${MyInheritedWidget.of(context).message}\n This is second screen',style: const TextStyle(fontWeight: FontWeight.bold),),
          // showing message variable of our
          // inherited widget class using of()
        )
    );
  }
}
