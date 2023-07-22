import 'package:flutter/material.dart';
import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/repository/product_repo.dart';
import 'package:flutter_app_getx/ui/app_pages.dart';
import 'package:flutter_app_getx/ui/listview/jsonlocal.dart';
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
          TV( title:'ENV:${config.env.toString()}'),
          BT(
            title: "JSON file",
            onTap: () {
              repo.getProductList();
              nav(context, JsonPage());
              // Get.toNamed(Routes.MAIN);
            },
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "Json remote",
            onTap: () {
              repo.getProductList();
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
              Get.toNamed(Routes.MAIN);
            },
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "Change locale EN",
            onTap: () {
              // repo.getProductList();
              // nav(context, List3());
              Get.toNamed(Routes.MAIN);
            },
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "Change locale VI",
            onTap: () {
              // repo.getProductList();
              // nav(context, List3());
              Get.toNamed(Routes.MAIN);
            },
          ),
        ],
      ),
    ));
  }
}
