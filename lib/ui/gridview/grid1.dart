import 'package:flutter/material.dart';
import 'package:flutter_app_getx/api/api.dart';
import 'package:flutter_app_getx/json/PostModel.dart';
import 'package:flutter_app_getx/ui/listview/base_list.dart';

class Grid1 extends StatefulWidget {
  const Grid1({super.key});

  @override
  State<Grid1> createState() => _List3State();
}

class _List3State extends ListPageState<PostModel, Grid1> {
  @override
  Future<List<PostModel>> loadData() async {
    List<PostModel> items = await api.doRequest();
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(100, (index) {
        return Center(
          child: Text(
            
            'Item $index',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        );
      }),
    );
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
