import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorsList extends StatelessWidget {
  const ColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'List of colors',
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                'RED',
                style: TextStyle(color: Colors.red),
              ),
              Text(
                'BLUE',
                style: TextStyle(color: Colors.blue),
              ),
              Text(
                'GREEN',
                style: TextStyle(color: Colors.green),
              ),
              Text(
                'ORANGE',
                style: TextStyle(color: Colors.deepOrange),
              ),
              Text(
                'PINK',
                style: TextStyle(color: Colors.pink[50]),
              ),
            ],
          ),
        ));
  }
}
