import 'package:flutter/material.dart';
import '../../uiresource/colors.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 35,
        height: 35,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: const CircularProgressIndicator(
          color: CustomColors.primary1,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
