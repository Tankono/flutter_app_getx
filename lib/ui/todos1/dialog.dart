import 'package:flutter/material.dart';

void showSuccessMessage(BuildContext context, message) {
  final snackBar = SnackBar(
    content: Center(
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
    backgroundColor: Colors.green[300],
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showErrorMessage(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Center(
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
    backgroundColor: Colors.red[400],
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
