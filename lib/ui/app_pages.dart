import 'package:flutter/material.dart';
import 'package:get/get.dart';

nav(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ),
  );
}

abstract class Routes {
  static const DEMO = '/demo';
  static const SPLASH = '/splash';
  static const LOGIN = '/login';
  static const MAIN = '/main';
  static const HOME = '/home';
  static const CATEGORY = '/category';
  static const FAVORITE = '/favorite';
  static const PRODUCTS = '/products';
  static const PRODUCT_DETAIL = '/productDetail';
  static const NOTIFICATION = '/notification';
  static const NOTIFICATION_DETAIL = '/notificationDetail';
  static const PROFILE = '/profile';
  static const UPDATE_PROFILE = '/updateProfile';
  static const REGISTER = '/register';
  static const VERIFY_ACCOUNT = '/verifyAccount';
  static const CART = '/cart';
  static const CART_INFO = '/cartInfo';
  static const WELCOME = '/welcome';
  static const ADDRESS = '/address';
  static const EDIT_ADDRESS = '/editAddress';
  static const FEEDBACK = '/feedback';
  static const MY_ORDERS = '/myOrders';
  static const PAYMENT_SUCCESS = '/paymentSuccess';
  static const POST = '/post';
  static const ORDER_DETAIL = '/orderDetail';
  static const SUPPORT = '/support';
  static const COMBO_MEMBER = '/comboMember';
  static const SEARCH = '/search';
  static const SPIN_WHEEL = '/spinWheel';
}

abstract class AppPages {
  static final pages = [];
}
