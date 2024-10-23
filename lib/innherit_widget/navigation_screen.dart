import 'package:flutter/material.dart';

import 'first_screen.dart';
import 'second_screen.dart';

class MyNavigation extends StatelessWidget {
  const MyNavigation({super.key});


  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      // message as string for our inherited widget
      message: 'Navigation Message',
      child: Navigator(
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case 'screen1':
            // Route for firs screen
              return generatePage(const FirstScreen());
            case 'screen2':
            // Route for second screen
              return generatePage(const SecondScreen());

          }
          return null;
        },
        // our first screen in app
        initialRoute: 'screen1',
      ),
    );
  }
}
Route generatePage(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
class MyInheritedWidget extends InheritedWidget {
  const MyInheritedWidget({super.key,required this.child,required this.message}) : super(child: child);

  @override
  final Widget child;


  // message variable for
  // our inherited widget
  final String message;

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return true;
  }
}

