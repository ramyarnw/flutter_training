import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart' show StateNotifierProvider;
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'app_provider/counter.dart';
import 'app_provider/counter_provider.dart';
import 'app_provider/user_provider.dart';
import 'model/user.dart';
import 'stateful_widget/api_call.dart';
import 'stateless_widgets/login_page.dart';


void main() {

  runApp(StateNotifierProvider<Counter,UserProvider>(create: (_) => Counter(), child: const MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build( BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CounterApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//fetch data, call fetch album method in init state methods
  @override
  void initState() {
    super.initState();
  }

  int _counter = 0;
  final ApiCall apiCall = ApiCall(); //reduce space allocation

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Column(
        children: <Widget>[
          const Text(
            'welcome to our page',
            style: TextStyle(color: Colors.green),
          ),
          ElevatedButton(
            child: const Text(
              'Login Page',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => const LoginPage()),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('schedule'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('duration'),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            child: buildColumn(),
          ),
          FutureBuilder<User>(
            future: apiCall.fetchUser(),
            builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.toString());
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            setState(() async {
              await apiCall.createUser();
            });
          },
          child: const Text('Create Data'),
        ),
      ],
    );
  }
}
