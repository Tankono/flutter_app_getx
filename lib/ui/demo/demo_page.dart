import 'package:flutter/material.dart';
import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/repository/product_repo.dart';
import 'package:flutter_app_getx/ui/app_pages.dart';
import 'package:flutter_app_getx/ui/demo/demo_locale.dart';
import 'package:flutter_app_getx/ui/listview/jsonlocal.dart';
import 'package:flutter_app_getx/ui/main/main_page.dart';
import 'package:flutter_app_getx/widgets/button.dart';
import 'package:flutter_app_getx/widgets/core_ui.dart';
import 'package:get/get.dart';
import 'package:flutter_app_getx/ui/listview/list3.dart';

class DemoPage extends GetWidget {
  DemoPage({super.key});
  final repo = ProductRepo();
  AppConfig config = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TV(title: 'ENV:${config.env.toString()}'),
          TV(
            title: 'hello'.tr,
          ),
          BT(
            title: "JSON file",
            onTap: () {
              repo.getProductList();
              // nav(context, JsonPage());
              Get.to(JsonPage());
              // Get.toNamed(Routes.MAIN);
            },
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "Json remote",
            onTap: () {
              // repo.getProductList();
              nav(context, List3());
              // Get.toNamed(Routes.MAIN);
            },
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "Home page Demo",
            onTap: () {
              // repo.getProductList();
              // nav(context, List3());
              // Get.toNamed(Routes.MAIN);
              Get.toNamed(Routes.HOME);

              // Get.to(MainPage());
            },
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "Locale Demo",
            onTap: () {
              // repo.getProductList();
              nav(context, DemoLocale());
              // Get.toNamed(Routes.MAIN);
            },
          ),
        ],
      ),
    ));
  }
}
