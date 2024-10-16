import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_training/main.dart';
import 'package:flutter_training/stateful_widget/homepage.dart';

/// Flutter code sample for [TextFormField].

const Duration kFakeHttpRequestDuration = Duration(seconds: 3);

/*void main() => runApp(const TextFormFieldExampleApp());

class TextFormFieldExampleApp extends StatelessWidget {
  const TextFormFieldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFormFieldExample(),
    );
  }
}
*/


class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller1 = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? forceErrorText;
  bool isLoading = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value.length != value
        .replaceAll(' ', '')
        .length) {
      return 'Username must not contain any spaces';
    }
    if (int.tryParse(value[0]) != null) {
      return 'Username must not start with a number';
    }
    if (value.length <= 2) {
      return 'Username should be at least 3 characters long';
    }
    return null;
  }

  /*String? validateMobile(String value) {
    const pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
*/
  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  void onChanged(String value) {
    // Nullify forceErrorText if the input changed.
    if (forceErrorText != null) {
      setState(() {
        forceErrorText = null;
      });
    }
  }

  Future<void> onSave() async {
    // Providing a default value in case this was called on the
    // first frame, the [fromKey.currentState] will be null.
    final bool isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    setState(() => isLoading = true);
    final String? errorText = await validateUsernameFromServer(controller.text);

    if (context.mounted) {
      setState(() => isLoading = false);

      if (errorText != null) {
        setState(() {
          forceErrorText = errorText;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FORM', style: TextStyle(color: Colors.pink, fontSize: 30
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  forceErrorText: forceErrorText,
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Please write a username',
                  ),
                  validator: validator,
                  onChanged: onChanged,
                ),
                /*TextFormField(
                  forceErrorText: forceErrorText,
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                  ),
                  validator: validateMobile,
                  onChanged: onChanged,
                ),*/
                TextFormField(
                  forceErrorText: forceErrorText,
                  controller: controller1,
                  decoration: const InputDecoration(
                    hintText: 'Enter email ID in lowercase letters',
                  ),
                  validator: validateEmail,
                  onChanged: onChanged,
                ),
                const SizedBox(height: 40.0),
                if (isLoading)
                  const CircularProgressIndicator()
                else
                  TextButton(
                    onPressed: onSave,
                    
                    child: const Text('Save'),
                  ),

                ElevatedButton(
                  child: const Text("Go to Homepage", style: TextStyle(color: Colors.blue),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage(Home: 'Home')),
                    );

                  },

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  Future<String?> validateUsernameFromServer(String username) async {
    final Set<String> takenUsernames = <String>{'siva', 'ram'};


    await Future<void>.delayed(kFakeHttpRequestDuration);

    final bool isValid = !takenUsernames.contains(username);
    if (isValid) {
      return null;
    }

    return 'Username $username is already taken';
  }
