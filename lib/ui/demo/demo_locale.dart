import 'package:flutter/material.dart';
import 'package:flutter_app_getx/data/response_models.dart';
import 'package:flutter_app_getx/ui/home/components/product_card.dart';
import 'package:flutter_app_getx/widgets/button.dart';
import 'package:flutter_app_getx/widgets/core_ui.dart';
import 'package:get/get.dart';

class DemoLocale extends GetWidget {
  DemoLocale({super.key});
  final List locale = [
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'VIETNAM', 'locale': Locale('vi', 'VN')},
  ];

  Product demo() {
    return Product(
        id: 0,
        name: 'entity.name!',
        permalink: 'permalink',
        type: 'type',
        status: 'status',
        description: 'description',
        shortDescription: 'shortDescription',
        price: "1",
        regularPrice: '3',
        salePrice: '3',
        stockStatus: 'stockStatus');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TV(
            title: 'hello'.tr,
          ),
          BT(
            title: "English",
            onTap: () {},
          ),
          SizedBox(
            height: 10,
          ),
          BT(
            title: "VietNam",
            onTap: () {},
          ),
          // ProductCard(
          //   isMemberVip: true,
          //   productModel: demo(),
          //   isFavorited: false,
          //   onTap: () => (),
          //   onAdd: () {},
          //   onFav: () {},
          // ),
        ],
      ),
    ));
  }
}
