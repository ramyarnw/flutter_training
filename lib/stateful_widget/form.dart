/*import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORM', style: TextStyle(color: Colors.pink, fontSize: 30
      ),
    )),
      key:_formKey,
          body:Container(

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>
              [
              TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                   validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter mobile number',
                  labelText: 'Phone',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter your date of birth',
                  labelText: 'Dob',
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              new Container(
                  padding: const EdgeInsets.only(left: 150.0, top: 40.0),
                  child:  ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                  // It returns true if the form is valid, otherwise returns false
                  if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snack bar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Data is in processing.')));
                  }
                  },
                  )),

            ]
          )
          )
    );
  }
}

extension on ScaffoldState {
  void showSnackBar(SnackBar snackBar) {}
}


*/