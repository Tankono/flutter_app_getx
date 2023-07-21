import 'package:flutter/material.dart';
import '../../../widgets/container_hide_keyboard.dart';

class SearchFilterWidget extends StatelessWidget {
  final Function(String) onSubmitted;
  const SearchFilterWidget({
    Key? key,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerHideKeyboard(
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: const [],
        ),
      ),
    );
  }
}
