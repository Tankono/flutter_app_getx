import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../uiresource/colors.dart';
// import 'package:banh_mi_88/modules/category/category_page.dart';
// import 'package:banh_mi_88/modules/favorite/favorite_page.dart';
import 'components/navigator_drawer_widget.dart';
import '../home/home_page.dart';
import 'components/bottom_nav.dart';
import 'package:get/get.dart';
import 'main_controller.dart';
import '../../widgets/wrap_page.dart';
import 'package:lottie/lottie.dart';

class MainPage extends GetWidget<MainController> {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WrapPage(
      statusBarColor: Colors.white,
      backgroundColor: Colors.white,
      keyScaffold: controller.scaffoldKey,
      drawer: const NavigationDrawerWidget(),
      bottomNav: BottomNav(onTabChange: (indexTab) {
        controller.currentTab.value = indexTab;
      }),
      child: _bodyContent(),
    );
  }

  Widget _bodyContent() => Obx(() {
        return _getPage(controller.currentTab.value);
      });

  _getPage(int page) {
    switch (page) {
      case 0:
        return HomePage();
      // case 1:
      //   return FavoritePage();
      // case 2:
      //   return FavoritePage();
    }
  }
}
