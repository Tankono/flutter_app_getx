import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();

  static const primary1 = Color(0XFFE17622);
  static const primary2 = Color(0XFFFFCD90);
  static const primary3 = Color(0XFFFF8A00);
  static const primary4 = Color(0XFFFF5501);
  static const accent1 = Color(0XFFFFE1BC);
  static const neutral1 = Color(0XFF313131);
  static const neutral2 = Color(0XFF979797);
  static const neutral3 = Color(0XFFDADADA);
  static const neutral4 = Color(0XFFF7F7F3);
  static const neutral5 = Color(0XFFFFFFFF);
  static const semantic1 = Color(0XFFF13232);
  static const semantic2 = Color(0XFFFFB21C);
  static const green1 = Color(0XFF00863F);
  static const white = Color(0XFFFFFF);

  static const gradient = LinearGradient(
      colors: [primary3, primary4],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}
