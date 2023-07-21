import 'package:flutter/material.dart';
import '../../../uiresource/colors.dart';
import '../../../uiresource/app_text_theme.dart';

import '../main_controller.dart';
import '../../app_pages.dart';

import '../../../widgets/default_avatar.dart';
// import 'package:banh_mi_88/widgets/dialogs/common_dialog.dart';
import '../../../widgets/standard_network_image.dart';
import 'package:get/get.dart';

enum RouteDrawer {
  myOrders,
  myReturns,
  personalDetails,
  paymentMethods,
  newsletter,
  chat,
  logout
}

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Align(
        alignment: Alignment.topLeft,
        child: Container(
            margin: const EdgeInsets.all(10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Drawer(
                    child: Material(
                        color: CustomColors.neutral5,
                        child: Column(children: <Widget>[
                          // Obx(() {
                          //   return buildHeader(
                          //       isVip: controller.account.isMemberVip,
                          //       urlImage: controller.account.avatar,
                          //       name: controller.account.displayName ??
                          //           controller.account.phone ??
                          //           "Bạn mới",
                          //       onClicked: () {});
                          // }),
                          Expanded(
                              child: Container(
                                  padding: padding,
                                  child: Column(children: [
                                    const SizedBox(height: 12),
                                    // buildMenuItem(
                                    //     index: 0,
                                    //     text: 'Thông tin cá nhân',
                                    //     icon:
                                    //         'assets/icons/information-icon.png',
                                    //     onClicked: (index) {
                                    //       Get.back();
                                    //       Get.toNamed(Routes.UPDATE_PROFILE);
                                    //     }),
                                    // const SizedBox(height: 12),
                                    buildMenuItem(
                                        index: 1,
                                        text: 'Đơn hàng',
                                        icon: 'assets/icons/my-orders-icon.png',
                                        onClicked: (index) {
                                          Get.back();
                                          // Get.toNamed(Routes.MY_ORDERS);
                                        }),
                                    // const SizedBox(height: 12),
                                    // buildMenuItem(
                                    //     index: 2,
                                    //     text: 'Địa chỉ',
                                    //     icon:
                                    //         'assets/icons/location_outline_icon.png',
                                    //     onClicked: (index) {
                                    //       Get.back();
                                    //       Get.toNamed(Routes.ADDRESS,
                                    //           arguments: AddressParams(
                                    //               fromMenu: true));
                                    //     }),
                                    const SizedBox(height: 12),
                                    buildMenuItem(
                                        index: 3,
                                        text: 'Thông báo',
                                        icon:
                                            'assets/icons/newsletter-icon.png',
                                        onClicked: (index) {
                                          Get.back();
                                          // Get.toNamed(Routes.NOTIFICATION);
                                        }),
                                    // const SizedBox(height: 12),
                                    // buildMenuItem(
                                    //     index: 4,
                                    //     text: 'Hỗ trợ',
                                    //     icon: 'assets/icons/chat-icon.png',
                                    //     onClicked: (index) {
                                    //       Get.back();
                                    //       Get.toNamed(Routes.POST,
                                    //           arguments: PostDetailParams(
                                    //               post: controller
                                    //                   .postSupportList.first));
                                    //     }),
                                    Expanded(child: Container()),
                                    buildMenuItem(
                                        index: 5,
                                        text: 'Đăng xuất',
                                        icon: 'assets/icons/logout-icon.png',
                                        onClicked: (index) {
                                          // showDialog(
                                          //     context: context,
                                          //     builder: (dialogContex) =>
                                          //         CommonDialog(
                                          //             title: 'Thông báo',
                                          //             content:
                                          //                 'Bạn có chắc chắn muốn đăng xuất?',
                                          //             onConfirm: () {
                                          //               controller.logout();
                                                        
                                          //             },
                                          //             confirmTitle:
                                          //                 'Đăng xuất'));
                                        }),
                                    const SizedBox(height: 12)
                                  ])))
                        ]))))),
      );
    });
  }

  Widget buildHeader({
    String? urlImage,
    required String name,
    required bool isVip,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(const EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              urlImage == null || urlImage.isEmpty
                  ? const DefaultAvatar()
                  : Stack(
                      clipBehavior: Clip.none,
                      children: [
                        StandardNetWorkImage(
                          imageUrl: urlImage,
                          width: 60,
                          height: 60,
                          boxFit: BoxFit.cover,
                          isBorder: true,
                          imageShape: ImageShape.Circle,
                        ),
                        // if (isVip)
                        //   Positioned(
                        //       bottom: -10,
                        //       left: 0,
                        //       right: 0,
                        //       child: Image.asset("assets/images/vip_member.png",
                        //           width: 24, height: 24))
                      ],
                    ),
              const SizedBox(width: 20),
              Text(name,
                  style: h18.copyWith(
                      color: CustomColors.neutral1,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required String icon,
    required int index,
    required Function(int) onClicked,
  }) {
    RxInt indexSelected = (-1).obs;
    return GestureDetector(
      onTap: () {
        if (indexSelected.value == -1) {
          indexSelected.value = index;
          onClicked(index);
        }
      },
      child: Obx(() {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: indexSelected.value == index
                    ? CustomColors.gradient
                    : const LinearGradient(
                        colors: [Colors.transparent, Colors.transparent])),
            child: Row(children: [
              Image.asset(icon,
                  color: indexSelected.value == index
                      ? CustomColors.neutral5
                      : CustomColors.neutral2,
                  height: 24,
                  width: 24),
              const SizedBox(width: 12),
              Text(text,
                  style: TextStyle(
                      color: indexSelected.value == index
                          ? CustomColors.neutral5
                          : CustomColors.neutral1,
                      fontWeight: FontWeight.w500)),
              const Spacer(),
              Icon(Icons.navigate_next,
                  color: indexSelected.value == index
                      ? CustomColors.neutral5
                      : CustomColors.neutral1),
            ]));
      }),
    );
  }
}
