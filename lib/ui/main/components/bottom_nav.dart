import 'package:flutter/material.dart';
import '../../../uiresource/colors.dart';
import '../../../uiresource/static_icons.dart';
import '../main_controller.dart';
import '../../app_pages.dart';
import 'package:get/get.dart';
import '../../../uiresource/app_text_theme.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  final Function(int) onTabChange;
  BottomNav({
    Key? key,
    required this.onTabChange,
  }) : super(key: key);

  RxInt currentTab = 0.obs;
  static const bottomNavHeight = 70.0;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 3,
          child: Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, -3),
                      color: Colors.black54.withOpacity(0.1),
                      blurRadius: 3)
                ],
                color: Colors.white,
              ),
              child: Obx(() {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _buildItemNav(
                                    onTap: () {
                                      currentTab.value = 0;
                                      onTabChange(0);
                                    },
                                    icon: currentTab.value == 0
                                        ? StaticIcons.homeFill
                                        : StaticIcons.homeOutline,
                                    label: 'Trang chủ',
                                    isSelected: currentTab.value == 0),
                                _buildItemNav(
                                    onTap: () {
                                      currentTab.value = 1;
                                      onTabChange(1);
                                    },
                                    icon: currentTab.value == 1
                                        ? StaticIcons.heartFill
                                        : StaticIcons.heartOutlineDisable,
                                    label: 'Yêu thích',
                                    isSelected: currentTab.value == 1),
                                _buildItemNav(
                                    onTap: () {
                                      // currentTab.value = 2;
                                      // onTabChange(2);
                                      Get.toNamed(Routes.SPIN_WHEEL);
                                    },
                                    icon: Lottie.asset(
                                        "assets/animations/spin-wheel.json"),
                                    label: 'Thử vận may',
                                    isSelected: false),
                              ])),
                    ),
                    const SizedBox(
                      height: 70,
                    )
                  ],
                );
              })),
        ),
        // Flexible(
        //   flex: 1,
        //   child: _renderCardButton(),
        // ),
      ],
    );
  }

  Widget _renderCardButton() {
    return GetBuilder<MainController>(builder: (controller) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
            height: bottomNavHeight,
            width: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
              ),
            ),
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: bottomNavHeight,
              width: 70,
              child: ElevatedButton(
                onPressed: () {
                  // controller.account.isMemberVip
                  //     ? controller.openCart()
                  //     : controller.openComboMember();
                  controller.openCart();
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: CustomColors.gradient,
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/icons/bag-bold.png",
                        color: Colors.white,
                        width: 40,
                        height: 40,
                      )),
                ),
              ),
            ),
          ),
          Obx(() {
            return Visibility(
              visible: controller.totalProduct > 0,
              child: Positioned(
                  right: 10,
                  top: -10,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.primary1,
                        border:
                            Border.all(width: 2, color: CustomColors.neutral5)),
                    child: Center(
                      child: Text(controller.totalProduct.toString(),
                          style: h12.copyWith(
                              fontWeight: FontWeight.w500,
                              color: CustomColors.neutral5)),
                    ),
                  )),
            );
          })
        ],
      );
    });
  }

  Widget _buildItemNav(
          {required Widget icon,
          required String label,
          required bool isSelected,
          required Function() onTap}) =>
      InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 70,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 28, width: 28, child: icon),
                const SizedBox(height: 5),
                Text(label,
                    style: h12.copyWith(
                        fontWeight: FontWeight.w500,
                        color: isSelected
                            ? CustomColors.primary1
                            : CustomColors.neutral2))
              ]),
        ),
      );
}
