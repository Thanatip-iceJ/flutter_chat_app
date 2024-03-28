import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  // final String placeHolder;
  // final controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'example',
        prefixIcon: Icon(Icons.key),
      ),
    );
  }
}
