import 'package:flutter/material.dart';

AppBar header() {
  return AppBar(
    elevation: 2,
    backgroundColor: Colors.amberAccent,
    title: const Center(
      child: Text(
        'Todo List',
        style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w700,
            shadows: [Shadow(color: Colors.transparent)],
            fontSize: 25),
      ),
    ),
  );
}

Widget emptyData() {
  return Center(
    child: Text(
      'No Todo Item',
    ),
  );
}

Widget loadingView() {
  return Center(
    child: CircularProgressIndicator(
      color: Colors.black,
    ),
  );
}

Widget itemView(int index, Map item) {
  return Card(
    color: Colors.amber[50],
    elevation: 0.5,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.amber.shade400,
        child: Text(
          '${index + 1}',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      textColor: Colors.black,
      title: Text(
        item['title'],
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        item['description'],
        style: const TextStyle(color: Colors.black45),
      ),
      trailing: PopupMenuButton(
        onSelected: (value) {
          if (value == 'edit') {
            //open edit page
            // navigateToEditPage(item);
          } else if (value == 'delete') {
            //open delete page
            // deleteById(id);
          }
        },
        itemBuilder: (context) {
          return [
            const PopupMenuItem(
              value: 'edit',
              child: Text('Edit'),
            ),
            const PopupMenuItem(
              value: 'delete',
              child: Text('Delete'),
            ),
          ];
        },
      ),
    ),
  );
}
