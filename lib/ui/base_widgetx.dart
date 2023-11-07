import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseWidgetX extends GetWidget {
  const BaseWidgetX({super.key});

  show_loading() {}

  show_alert() {}
}

class BTFloat {
  static FloatingActionButton add(Function onTap) {
    return FloatingActionButton(
      onPressed: ()=>onTap(),
      child: const Icon(Icons.add),
    );
  }

  static FloatingActionButton add1(Function onTap) {
    return FloatingActionButton.extended(
      onPressed: () =>onTap(),
      label: const Text(
        'Add Todo',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.amberAccent,
      elevation: 1,
    );
  }
}
