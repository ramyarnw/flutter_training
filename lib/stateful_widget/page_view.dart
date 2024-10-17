import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/stateless_widgets/first_page.dart';
import 'package:flutter_training/stateless_widgets/second_page.dart';
import 'package:flutter_training/stateless_widgets/third_page.dart';

class PageView1 extends StatefulWidget {
  @override
  _PageView1State createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  PageController controller = PageController();
  List<Widget> _list = <Widget>[
    new Center(child: new FirstPage()),
    new Center(child: new SecondPage()),
    new Center(child: new ThirdPage()),
  ];

  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageViews"),
        actions: <Widget>[],
      ),
      body: PageView(
        children: _list,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        physics: BouncingScrollPhysics(),
        controller: controller,
        onPageChanged: (num) {
          print("Current page number is " + num.toString());
          _curr = num;
        },
      ),
    );
  }
}
