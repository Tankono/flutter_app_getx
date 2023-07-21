import 'package:flutter/material.dart';
import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/repository/product_repo.dart';
import 'package:flutter_app_getx/widgets/button.dart';
import 'package:get/get.dart';

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
          Text('ENV:${config.env.toString()}'),
          BT(
            onTap: () {
              repo.getProductList();

              // Get.toNamed(Routes.MAIN);
            },
          ),
        ],
      ),
    ));
  }
}
