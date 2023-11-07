import 'package:flutter/material.dart';
import 'package:flutter_app_getx/ui/base_widgetx.dart';
import 'package:flutter_app_getx/ui/demo/demo_item.dart';
import 'package:flutter_app_getx/ui/todos1/todo_widgets.dart';

import 'add_page.dart';
import 'rest_api_todo.dart';

enum DataStatus {
  Loading,
  LoadingDone,
  DataEmpty,
  DataError,
}

class TodoListPageMe extends StatefulWidget {
  const TodoListPageMe({super.key});

  @override
  State<TodoListPageMe> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPageMe> {
  bool isLoading = true;
  List items = [];
  @override
  void initState() {
    super.initState();
    fetchTodo();
  }

  Future<void> fetchTodo() async {
    final result = await RestApiTodo.fetchTodo();
    setState(() {
      items = result;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: header(),
      body: Visibility(
        visible: isLoading,
        replacement: RefreshIndicator(
          onRefresh: fetchTodo,
          color: Colors.black,
          child: Visibility(
            visible: items.isNotEmpty,
            replacement: emptyData(),
            child: ListView.builder(
                itemCount: items.length,
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  final item = items[index] as Map;
                  return itemView(index, item);
                }),
          ),
        ),
        child: loadingView(),
      ),
      floatingActionButton: BTFloat.add(navAdd),
    );
  }

  navAdd() {
    nav(context, const AddPage());
  }
}
