import 'package:flutter/material.dart';
import '../../../uiresource/colors.dart';

class ButtonIcon extends StatelessWidget {
  final double size;
  final Widget icon;
  final Function onTap;
  final Color background;
  final bool isBorder;
  const ButtonIcon(
      {Key? key,
      this.size = 40,
      required this.icon,
      required this.onTap,
      this.background = Colors.white,
      this.isBorder = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: TextButton(
        onPressed: () {
          onTap();
        },
        child: icon,
        style: TextButton.styleFrom(
          elevation: 1,
          primary: CustomColors.primary1,
          backgroundColor: background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
