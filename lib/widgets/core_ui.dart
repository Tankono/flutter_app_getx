import 'package:flutter/material.dart';

class TV extends StatelessWidget {
  final String title;
  const TV({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: const TextStyle(color: Colors.blue, fontSize: 20),
    );
  }
}
