import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../uiresource/static_icons.dart';
import '../../ui/splash/splash_controller.dart';
import '../../widgets/wrap_page.dart';

class SplashPage extends GetWidget<SplashController> {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WrapPage(
        statusBarColor: Colors.white,
        backgroundColor: Colors.white,
        child: SizedBox(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.width / 2,
                child: Center(
                  child: StaticIcons.logo,
                ),
              ),
            ],
          ),
        ));
  }
}
