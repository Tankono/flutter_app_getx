import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../home_controller.dart';
import '../../../widgets/standard_network_image.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Obx(() {
        if (controller.postPromotionList.isEmpty) {
          return const SizedBox();
        }
        return Expanded(
            child: CarouselSlider.builder(
                itemCount: controller.postPromotionList.length,
                itemBuilder: (_, itemIndex, pageViewIndex) {
                  return GestureDetector(
                    onTap: () {
                      controller.openPost(
                          post: controller.postPromotionList[itemIndex]);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: StandardNetWorkImage(
                          imageUrl: controller.postPromotionList[itemIndex]
                              .toString(),
                          boxFit: BoxFit.cover,
                          width: double.infinity,
                          imageShape: ImageShape.Reactangle5x4,
                          placeholderShape: ImageShape.Reactangle5x4,
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  aspectRatio: 3,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )));
      });
    });
  }
}
