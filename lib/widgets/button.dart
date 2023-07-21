import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return bt5();
    // return ElevatedButton(
    //   style: ElevatedButton.styleFrom(
    //     shape: const StadiumBorder(),
    //   ),
    //   child: const Text('Pill Button'),
    //   onPressed: () {},
    // );
  }

  Widget bt1() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: const Text(
        'Button',
        style: TextStyle(fontSize: 14),
      ),
      onPressed: () {},
    );
  }

  Widget bt2() {
    return Material(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        hoverColor: Colors.orange,
        splashColor: Colors.red,
        focusColor: Colors.yellow,
        highlightColor: Colors.purple,
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 200,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: const Text('Button'),
        ),
      ),
    );
  }

  Widget bt3() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          elevation: 6,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          backgroundColor: Colors.amber,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: const Text(
        'Button',
        style: TextStyle(fontSize: 24),
      ),
      onPressed: () {},
    );
  }

  Widget bt4() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 240,
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.blue[200],
        ),
        child: const Text(
          'Button',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  Widget bt5() {
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
