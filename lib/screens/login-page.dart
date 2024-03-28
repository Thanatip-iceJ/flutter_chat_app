import 'package:flutter/material.dart';
import 'package:flutter_chat_app/widgets/custom-text-field.dart';
import 'package:flutter_chat_app/widgets/stretched-button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Scaffold(
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Container(
                  margin: const EdgeInsets.only(right: 40),
                  child: Image.asset(
                    'assets/flutter-logo.png',
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Welcome !',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text('Login',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextField(),
                const SizedBox(
                  height: 16,
                ),
                const CustomTextField(),
                const SizedBox(
                  height: 20,
                ),
                const StretchedButton()
              ],
            ),
          ),
        )),
      ),
    );
  }
}
