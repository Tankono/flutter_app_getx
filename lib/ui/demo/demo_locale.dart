import 'package:flutter/material.dart';
import 'package:flutter_app_getx/widgets/button.dart';
import 'package:flutter_app_getx/widgets/core_ui.dart';
import 'package:get/get.dart';

class DemoLocale extends GetWidget {
  DemoLocale({super.key});
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'VIETNAM', 'locale': Locale('vi', 'VN')},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TV(
            title: 'hello'.tr,
          ),
          BT(
            title: "English",
            onTap: () {},
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "VietNam",
            onTap: () {},
          ),
        ],
      ),
    ));
  }
}
