import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final currentTab = 0.obs;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // MainController(
  //     {required AccountService accountService,
  //     required AuthService authService,
  //     required ProductService productService,
  //     required CartService cartService,
  //     localService})
  //     : _accountService = accountService,
  //       _authService = authService,
  //       _productService = productService,
  //       _cartService = cartService;

  // final AccountService _accountService;
  // final AuthService _authService;
  // final CartService _cartService;
  // final ProductService _productService;

  // UserModel get account => _accountService.myAccount!;
  // int get totalProduct => _cartService.totalProduct;
  int totalProduct = 10;
  // List<PostModel> get postSupportList => _productService.postTermList;

  void logout() {    
    // PreferenceUtils.remove(StorageKey.USERNAME);
    // PreferenceUtils.remove(StorageKey.PASSWORD);
    // _cartService.cleanLocal();
    // Get.offAllNamed(Routes.LOGIN)!.then((value) {
    //   _accountService.clean();
    // });
  }

  void openComboMember() {
    // Get.toNamed(Routes.COMBO_MEMBER);
  }

  void openCart() {
    // Get.toNamed(Routes.CART);
  }

  void openSpin() {
    // Get.toNamed(Routes.SPIN_WHEEL);
  }
}
