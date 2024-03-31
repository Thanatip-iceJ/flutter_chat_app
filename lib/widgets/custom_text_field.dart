import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.placeHolder,
      this.icon,
      required this.controller,
      this.validator,
      this.readOnly,
      this.obscureText});

  final String placeHolder;
  final TextEditingController controller;
  final Icon? icon;
  final String? Function(String?)? validator;
  final bool? readOnly;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      readOnly: readOnly ?? false,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: placeHolder,
        prefixIcon: icon ?? const Icon(Icons.key),
      ),
    );
  }
}
