import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_getx/ui/todos1/todo_list_me.dart';
import 'todo_list.dart';

// void main() {
//   runApp(const MyApp());
// }

class TodoApp1 extends StatelessWidget {
  const TodoApp1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: TodoListPage(),
      home: TodoListPageMe(),
    );
  }
}
