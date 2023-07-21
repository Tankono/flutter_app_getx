import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../uiresource/colors.dart';
import '../../../uiresource/app_text_theme.dart';

enum PopupMenuStyle { sliver, normal }

class PopupMenu extends StatefulWidget {
  final String? hintLabel;
  final List<String> options;
  final Function(String) selected;
  final PopupMenuStyle style;

  const PopupMenu({
    Key? key,
    this.hintLabel,
    this.style = PopupMenuStyle.normal,
    required this.options,
    required this.selected,
  }) : super(key: key);

  @override
  _PopupMenuState createState() => _PopupMenuState();
}

class _PopupMenuState extends State<PopupMenu> {
  RxString kwSort = ''.obs;

  List<PopupMenuEntry> generateOptions() {
    List<PopupMenuEntry> list = widget.options
        .asMap()
        .map((i, element) => MapEntry(
              i,
              PopupMenuItem(
                child: Center(
                  child: Text(
                    element,
                    style: h16.copyWith(
                        color: CustomColors.primary1,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                value: element,
              ),
            ))
        .values
        .toList();
    return list;
  }

  @override
  void initState() {
    super.initState();
    kwSort.value = (widget.hintLabel ?? widget.options[0]);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: PopupMenuButton(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          offset: const Offset(0, 30),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(kwSort.value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: h18.copyWith(
                        color: widget.style == PopupMenuStyle.normal
                            ? CustomColors.neutral1
                            : CustomColors.neutral5,
                        fontWeight: FontWeight.w600));
              }),
              Icon(Icons.keyboard_arrow_down,
                  color: widget.style == PopupMenuStyle.normal
                      ? CustomColors.neutral1
                      : CustomColors.neutral5)
            ],
          ),
          onSelected: (value) {
            if (value != null && value is String) {
              kwSort.value = value;
              widget.selected(kwSort.value);
            }
          },
          itemBuilder: (context) => generateOptions()),
    );
  }
}
