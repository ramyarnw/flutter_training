import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';
import 'user_provider.dart';

extension on BuildContext{
    Counter get  stateRead=> read<Counter>();
    UserProvider get stateWatch => watch<UserProvider>();
}
class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final Counter counter = Counter();
    return Scaffold(
        appBar: AppBar(
        title: const Text(
        'Counter App',
        style: TextStyle(color: Colors.pink, fontSize: 20),
    ),
),
body: Column(
  children: <Widget>[
    Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      const Text('Press + to increment and - to decrement',style: TextStyle(fontStyle: FontStyle.normal,fontSize: 20),),
      Text(context.stateWatch.name.toString(),style: const TextStyle(fontSize: 20,color: Colors.red),),

    ],
)
    )
  ],
),
      floatingActionButton: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            FloatingActionButton(
              onPressed:() {
                print(context.stateRead.state.name.toString(),);
                context.stateRead.increment();

              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed:()
              {
                context.stateRead.decrement();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),


    );
  }
}
