import 'package:flutter/material.dart';
import 'package:flutter_app_getx/api/api.dart';
import 'package:flutter_app_getx/json/PostModel.dart';
import 'package:flutter_app_getx/ui/listview/base_list.dart';

class Grid2 extends StatefulWidget {
  const Grid2({super.key});

  @override
  State<Grid2> createState() => _List3State();
}

class _List3State extends ListPageState<PostModel, Grid2> {
  @override
  Future<List<PostModel>> loadData() async {
    List<PostModel> items = await api.doRequest();
    return items;
  }

  @override
  Widget createListView() {
    // TODO: implement createListView
    return CustomScrollView(
      slivers: [
        // SliverAppBar(
        //     //SOME OPTIONS AND VALUES HERE
        //     ),
        SliverToBoxAdapter(
            // this is populated with a fetch
            //child: NiceWidgetHere(),
            ),
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => itemView(getItem(index)),
            ))
      ],
    );
  }

  @override
  Widget itemView(PostModel entity) {
    return Card(
        margin: const EdgeInsets.all(10),
        color: Colors.amber.shade100,
        child: Center(
          child: Text("item:${entity.title}",overflow: TextOverflow.ellipsis),
        ));
  }
}
