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

    // Get.lazyPut(
    //   () => MainController(
    //       accountService: Get.find(),
    //       authService: Get.find(),
    //       cartService: Get.find(),
    //       productService: Get.find()),
    // );
    // Get.lazyPut(
    //   () => HomeController(
    //       productService: Get.find(),
    //       accountService: Get.find(),
    //       cartService: Get.find()),
    // );
    // Get.lazyPut(
    //   () => CategoryController(productService: Get.find()),
    // );
    // Get.lazyPut(
    //   () => FavoriteController(
    //       productService: Get.find(),
    //       accountService: Get.find(),
    //       cartService: Get.find()),
    // );
  }
}
