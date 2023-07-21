import 'package:flutter/material.dart';

import '../uiresource/colors.dart';
import '../uiresource/static_icons.dart';


class DefaultAvatar extends StatelessWidget {
  final double radius;
  const DefaultAvatar({
    Key? key,
    this.radius = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: CustomColors.primary1),
      ),
      child: CircleAvatar(
        radius: radius,
        child: ClipOval(child: StaticIcons.anonymous),
      ),
    );
  }
}
