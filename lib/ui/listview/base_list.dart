import 'package:flutter/material.dart';

class BaseList extends StatefulWidget {
  const BaseList({super.key});

  @override
  State<BaseList> createState() => ListPageState();
}

class ListPageState<E, S extends StatefulWidget> extends State<S> {
  List<E> data = [];
  Future<List<E>> loadData() async {
    return [];
  }

  Widget itemView(E entity) {
    return ListTile(
      title: Text('$entity'),
    );
  }

  ListView createListView() {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return itemView(data[index]);
      },
    );
  }

  Widget loadingView() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Data from API'),
        ),
        body: FutureBuilder(
          future: loadData(),
          builder: (context, data) {
            if (data.hasData) {
              this.data = data.data as List<E>;
              return createListView();
            } else {
              return loadingView();
            }
          },
        ));
  }
}
