import 'package:flutter/material.dart';

class ContainerHideKeyboard extends StatelessWidget {
  final Widget child;
  // ignore: use_key_in_widget_constructors
  const ContainerHideKeyboard({required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
