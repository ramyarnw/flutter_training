import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
   const AppTextFormField({
    super.key,
    required this.hintText,
    this.iconColor,
    this.obscure = false,
    this.forceErrorText,
    this.validator, required this.controller,  this.onChanged,
  });

  final String hintText;
  final Color? iconColor;
  final bool obscure;
  final String? forceErrorText;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
final TextEditingController controller;
  @override
  Widget build(BuildContext context) {

    return TextFormField(

      obscureText: obscure,
      forceErrorText: forceErrorText,
     validator: validator,
     controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.pink,
        prefix: Icon(
          Icons.add,
          color: iconColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.yellow),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}


