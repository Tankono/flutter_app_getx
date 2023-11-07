import 'package:flutter/material.dart';
import 'demo_item.dart';

class ListDemo extends StatelessWidget {
  final List<DemoItem> demos = getList();
  ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Tutorial';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: ListView.builder(
            itemCount: demos.length,
            itemBuilder: (context, index) {
              DemoItem entity = demos[index];
              return ListTile(
                title: Text('${entity.title}'),
                onTap: () => {entity.showScreen(context)},
              );
            },
          )),
    );
  }
}