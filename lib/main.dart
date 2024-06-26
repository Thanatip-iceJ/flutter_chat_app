import 'package:flutter/material.dart';
import 'package:flutter_chat_app/screens/login_page.dart';
import 'package:flutter_chat_app/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: LoginPage(),
    );
  }
}
