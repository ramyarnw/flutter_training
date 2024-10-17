import 'package:flutter/material.dart';
import 'package:flutter_training/stateful_widget/page_view.dart';
import 'package:flutter_training/stateless_widgets/signup_page.dart';
import 'package:flutter_training/widget/text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(// <-- STACK AS THE SCAFFOLD PARENT
        children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgimage.jpg"),
            // <-- BACKGROUND IMAGE
            fit: BoxFit.cover,
          ),
        ),
      ),
      /*MaterialApp(
      debugShowCheckedModeBanner: false,
      home: */
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: const Text(
              'Login Page',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontStyle: FontStyle.italic,
              ),
            ),
            backgroundColor: Colors.transparent),
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),//private function
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      )
    ]);
  }

  Column _header(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Welcome to NATIVEWIT TECH Page',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text('Enter your details to login'),
      ],
    );
  }

  Column _inputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        TextField(
          decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Colors.greenAccent.withOpacity(0.5),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.greenAccent.withOpacity(0.5),
            filled: true,
            prefixIcon: const Icon(Icons.password),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.greenAccent,
          ),
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 20),
          ),
        )
      ],
    );
  }

  TextButton _forgotPassword(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Forgot password?',
        style: TextStyle(color: Colors.purple),
      ),
    );
  }

  Row _signup(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Dont have an account? '),
        TextButton(
          child: const Text(
            'Sign Up',
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) => const SignupPage()),
            );
          },
        )
      ],
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('STATUS'),
          content: Text('login Success'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageView1()),
                );
                //Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
