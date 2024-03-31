import 'package:flutter/material.dart';
import 'package:flutter_chat_app/widgets/custom_text_field.dart';
import 'package:flutter_chat_app/widgets/stretched_button.dart';
import 'package:intl/intl.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  DateTime? selectedDate;

  void openDatePicker() async {
    FocusScope.of(context).requestFocus(FocusNode());
    final now = DateTime.now();
    final pickedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(now.year - 100, now.month, now.day),
        lastDate: now);

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
        dateController.text = formatter.format(pickedDate);
      });
    }
  }

  DateFormat formatter = DateFormat.yMd();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Join and connect with others',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Create an account',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                placeHolder: 'First name',
                icon: const Icon(Icons.person),
                controller: firstNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Last name cant\'t be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                placeHolder: 'Last name',
                icon: const Icon(Icons.person),
                controller: lastNameController,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Last name cant\'t be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                onTap: openDatePicker,
                readOnly: true,
                controller: dateController,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return 'Please enter your date of birth';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.calendar_month),
                    label: Text('Date of birth')),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                placeHolder: 'Username',
                icon: const Icon(Icons.person),
                controller: usernameController,
                validator: (value) => value!.trim().length <= 3 || value.isEmpty
                    ? 'Username must contain more than 3 characters'
                    : null,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                placeHolder: 'Password',
                obscureText: true,
                controller: passwordController,
                validator: (value) => value!.trim().length <= 3 || value.isEmpty
                    ? 'Password must contain more than 3 characters'
                    : null,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                placeHolder: 'Confirm password',
                controller: confirmPasswordController,
                obscureText: true,
                validator: (value) {
                  if (value != passwordController.text) {
                    return 'Password doesn\'t match, please try again';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              StretchedButton(
                text: 'Create Account',
                onPressFunc: () {
                  if (formKey.currentState!.validate()) {
                    print('test form');
                  }
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
