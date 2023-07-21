import '../../ui/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(
    //   () => SplashController(
    //       authService: Get.find(),
    //       localService: Get.find(),
    //       messageService: Get.find(),
    //       productService: Get.find(),
    //       cartService: Get.find(), accountService: Get.find()),
    // );
    Get.lazyPut(() => SplashController());
  }
}
