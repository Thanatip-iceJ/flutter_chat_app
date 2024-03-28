import 'package:flutter/material.dart';

class StretchedButton extends StatelessWidget {
  const StretchedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
              onPressed: () {},
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primaryContainer),
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )),
        ),
      ],
    );
  }
}
