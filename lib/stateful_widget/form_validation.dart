import 'package:flutter/material.dart';

import '../main.dart';
import '../widget/text_form_field.dart';
import 'page_view.dart';

/// Flutter code sample for [TextFormField].

const Duration kFakeHttpRequestDuration = Duration(seconds: 3);

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  final TextEditingController controllerUserName = TextEditingController();
  final TextEditingController controllerMobile = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? forceErrorText;
  bool isLoading = false;

  @override
  void dispose() {
    controllerUserName.dispose();
    controllerMobile.dispose();
    controllerEmail.dispose();

  }

  String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value.contains(' ')) {
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

  String? validateMobile(String? value) {
    const String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    final RegExp regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter mobile number'
        : null;
  }

  String? validateEmail(String? value) {
    const String pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final RegExp regex = RegExp(pattern);

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
    final String? errorText =
        await validateUsernameFromServer(controllerUserName.text);

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
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
               image: DecorationImage(
                image: AssetImage("assets/images/solid_image.jpg"),
              //<-- BACKGROUND IMAGE
                fit: BoxFit.cover,
              ),
              ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: const Text(
                'FORM VALIDATION',
                style: TextStyle(color: Colors.pink, fontSize: 30),
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
                       AppTextFormField(
                        hintText: 'UserName',
                        validator: validateUserName,
                         controller: controllerUserName,
                      ),
                      AppTextFormField(
                        hintText: 'mobile number',
                        iconColor: Colors.red,
                        validator: validateMobile,
                        controller: controllerMobile,
                      ),
                      AppTextFormField(
                        hintText: 'emailId',
                        //obscure: true,
                        validator: validateEmail,
                        controller: controllerEmail,
                      ),
                      // TextFormField(
                      //   forceErrorText: forceErrorText,
                      //   controller: controller,
                      //   decoration: InputDecoration(
                      //     fillColor: Colors.grey,
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: const BorderSide(color: Colors.red),
                      //       borderRadius: BorderRadius.circular(10.0),
                      //     ),
                      //     hintText: 'Please write a username',
                      //   ),
                      //   c: validator,
                      //   onChanged: onChanged,
                      // ),
                      // TextFormField(
                      //   forceErrorText: forceErrorText,
                      //   controller: controller2,
                      //   decoration: InputDecoration(
                      //     fillColor: Colors.grey,
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: const BorderSide(color: Colors.red),
                      //       borderRadius: BorderRadius.circular(10.0),
                      //     ),
                      //     hintText: 'Enter password',
                      //   ),
                      //   validator: validateMobile,
                      //   onChanged: onChanged,
                      // ),
                      // TextFormField(
                      //   forceErrorText: forceErrorText,
                      //   controller: controller1,
                      //   decoration: InputDecoration(
                      //     fillColor: Colors.grey,
                      //     focusedBorder: OutlineInputBorder(
                      //       borderSide: const BorderSide(color: Colors.red),
                      //       borderRadius: BorderRadius.circular(10.0),
                      //     ),
                      //     hintText: 'Enter email ID in lowercase letters',
                      //   ),
                      //   validator: validateEmail,
                      //   onChanged: onChanged,
                      // ),
                      const SizedBox(height: 40.0),
                      if (isLoading)
                        const CircularProgressIndicator()
                      else
                        TextButton(
                          onPressed: onSave,
                          child: const Text('Save'),
                        ),
                      ElevatedButton(
                        child: const Text(
                          'Go to Homepage',
                          style: TextStyle(color: Colors.blue),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MyHomePage()),
                          );
                        },
                      ),
                      ElevatedButton(
                        child: const Text(
                          'Continue -> PageView',
                          style: TextStyle(color: Colors.purple),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => PageView1()),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ))
      ],
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
