import 'package:flutter/material.dart';

class TV extends StatelessWidget {
  final String title;
  const TV({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$title',
      style: const TextStyle(color: Colors.blue, fontSize: 20),
    );
  }
}

class ET extends TextField {
  const ET({super.key});
}

class BT extends StatelessWidget {
  final double size;
  Function? onTap;
  final Color background;
  final bool isBorder;
  final String title;
  BT(
      {super.key,
      required this.title,
      this.size = 40,
      this.onTap,
      this.background = Colors.white,
      this.isBorder = true});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onTap!();
      },
      child: Text('$title'),
      style: TextButton.styleFrom(
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
