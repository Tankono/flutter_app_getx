import 'package:flutter/material.dart';
import '../../../uiresource/static_icons.dart';
import 'pop_menu.dart';
import '../../../widgets/button_icon.dart';

class AppBarHome extends StatelessWidget {
  final Function() onProfile;
  final Function()? onSetting;
  final PopupMenuStyle style;
  const AppBarHome({
    Key? key,
    required this.onProfile,
    this.onSetting,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        ButtonIcon(icon: StaticIcons.person, onTap: onProfile),
        const Spacer(),
        // Expanded(
        //   child: Center(
        //     child: PopupMenu(
        //         style: style,
        //         selected: (value) {},
        //         options: AppBarHomeConst.CATEGORIES),
        //   ),
        // ),
        onSetting != null
            ? ButtonIcon(icon: StaticIcons.setting, onTap: onSetting!)
            : const SizedBox(
                width: 40,
              )
      ]),
    );
  }
}

class AppBarHomeConst {
  // ignore: constant_identifier_names
  static const CATEGORIES = ['Nữ', 'Nam', 'Bé'];
}
