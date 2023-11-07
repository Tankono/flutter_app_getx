import 'package:flutter/material.dart';
import 'button_login.dart';
import 'input_password.dart';
import 'input_username.dart';
import 'signup_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
              Text(
                "Login to your account",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 60),
              InputUserName(),
              const SizedBox(height: 10),
              InputPassword(),
              const SizedBox(height: 60),
              const Column(
                children: [
                  ButtonLogin(),
                  SignUpText(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
