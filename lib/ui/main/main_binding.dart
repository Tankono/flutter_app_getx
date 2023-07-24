import 'package:flutter_app_getx/ui/home/home_controller.dart';
import 'package:flutter_app_getx/ui/main/main_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());
    Get.lazyPut(() => HomeController(
          productService: Get.find(),
        ));
  }
}
