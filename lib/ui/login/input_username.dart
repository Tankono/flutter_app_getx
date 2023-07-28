import 'package:flutter/material.dart';

class InputUserName extends StatelessWidget {
  final TextEditingController _controllerUsername = TextEditingController();

  InputUserName({super.key});

  @override
  Widget build(context) {
    return TextFormField(
      controller: _controllerUsername,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Username",
        prefixIcon: const Icon(Icons.person_outline),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      // onEditingComplete: () => _focusNodePassword.requestFocus(),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return "Please enter username.";
        }
        //  else if (!_boxAccounts.containsKey(value)) {
        //   return "Username is not registered.";
        // }

        return null;
      },
    );
  }
}
