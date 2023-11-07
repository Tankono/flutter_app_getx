import 'package:flutter/material.dart';
import 'package:flutter_app_getx/ui/login/login_page.dart';

class AuthMod extends StatelessWidget {
  const AuthMod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
