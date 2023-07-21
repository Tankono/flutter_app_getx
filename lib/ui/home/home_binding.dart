import 'home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(
    //   () => HomeController(
    //       productService: Get.find(),
    //       accountService: Get.find(),
    //       cartService: Get.find()),
    // );
    Get.lazyPut(() => HomeController(
      productService: Get.find(),
    ));
  }
}
