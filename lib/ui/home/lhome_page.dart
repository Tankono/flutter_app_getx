import 'package:flutter/material.dart';
import 'package:flutter_app_getx/ui/base_widgetx.dart';

class HomePage extends BaseWidgetX {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Form(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Text(
                "Home",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
