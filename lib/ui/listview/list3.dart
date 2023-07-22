import 'package:flutter/material.dart';
import 'package:flutter_app_getx/api/api.dart';
import 'package:flutter_app_getx/json/JsonHelper.dart';
import 'package:flutter_app_getx/json/PostModel.dart';
import 'package:flutter_app_getx/ui/listview/base_list.dart';

class List3 extends StatefulWidget {
  const List3({super.key});

  @override
  State<List3> createState() => _List3State();
}

class _List3State extends ListPageState<PostModel, List3> {

  @override
  Future<List<PostModel>> loadData() async {
    List<PostModel> items = await api.doRequest();
    return items;
  }

  @override
  Widget itemView(PostModel entity) {
    return Card(
      // key: ValueKey(_items[index]["id"]),
      margin: const EdgeInsets.all(5),
      color: Colors.amber.shade100,
      child: ListTile(
        leading: Text('${entity.title}'),
        // title: Text(_items[index]["name"]),
        // subtitle: Text(_items[index]["description"]),
      ),
    );
  }
}
