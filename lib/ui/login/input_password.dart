import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final TextEditingController _controllerPassword = TextEditingController();
  bool _obscurePassword = true;
  final FocusNode _focusNodePassword = FocusNode();

  InputPassword({super.key});

  @override
  Widget build(context) {
    return TextFormField(
      controller: _controllerPassword,
      focusNode: _focusNodePassword,
      obscureText: _obscurePassword,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: "Password",
        prefixIcon: const Icon(Icons.password_outlined),
        suffixIcon: IconButton(
            onPressed: () {
              // setState(() {
              //   _obscurePassword = !_obscurePassword;
              // });
            },
            icon: _obscurePassword
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Please enter password.";
        }
        //  else if (value !=
        //     _boxAccounts.get(_controllerUsername.text)) {
        //   return "Wrong password.";
        // }

        return null;
      },
    );
  }
}
