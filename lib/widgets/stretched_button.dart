import 'package:flutter/material.dart';

class StretchedButton extends StatelessWidget {
  const StretchedButton(
      {super.key, required this.text, required this.onPressFunc});

  final String text;
  final Function() onPressFunc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
              onPressed: onPressFunc,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Theme.of(context).colorScheme.inversePrimary),
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  text,
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
