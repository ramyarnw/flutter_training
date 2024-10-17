import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colorchange extends StatefulWidget {
  Colorchange({super.key});

  @override
  State<Colorchange> createState() => _ColorchangeState();
}

class _ColorchangeState extends State<Colorchange> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: isPressed ? Colors.red : Colors.blue),
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Text('Press Me'),
      ),
    ));
  }
}
