import 'package:flutter_app_getx/ui/home/components/product_card.dart';

import '../../widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import '../../uiresource/colors.dart';
import '../../uiresource/app_text_theme.dart';
import './components/app_bar_home.dart';
import './components/pop_menu.dart';
import 'package:get/get.dart';
import './home_controller.dart';

// ignore: must_be_immutable
class HomePage extends GetWidget<HomeController> {
  HomePage({Key? key}) : super(key: key);

  double top = 0.0;
  static const limitDisplayScroll = 120;
  static const paddingOfItem = 20.0;
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double widthCard = (size.width - paddingOfItem) / 2;
    final double heightCard = (size.height - paddingOfItem) / 2.5;
    return Container(
      color: Colors.white,
      child: RefreshIndicator(
        onRefresh: controller.pullToRefresh,
        color: CustomColors.primary1,
        child: CustomScrollView(slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            floating: true,
            pinned: true,
            expandedHeight: 50, //size.height * .35,
            backgroundColor: Colors.white,
            flexibleSpace: LayoutBuilder(builder: (context, cons) {
              top = cons.biggest.height;
              return FlexibleSpaceBar(
                centerTitle: true,
                titlePadding: EdgeInsets.zero,
                collapseMode: CollapseMode.pin,
                title: AnimatedOpacity(
                  opacity: top <= limitDisplayScroll ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 50),
                  alwaysIncludeSemantics: true,
                  child: AppBarHome(
                    onProfile: () {
                      // controller.mainController.scaffoldKey.currentState!
                      // .openDrawer();
                    },
                    // onSetting: () {},
                    style: PopupMenuStyle.sliver,
                  ),
                ),
              );
            }),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
                child: Row(
              children: [
                Text('Sản phẩm',
                    style: h24.copyWith(fontWeight: FontWeight.w600)),
                // const Spacer(),
                // GestureDetector(
                //   onTap: () {},
                //   child: Text('xem thêm',
                //       style: h14.copyWith(color: CustomColors.primary1)),
                // ),
              ],
            )),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: Obx(() {
                if (controller.isLoading.value) {
                  return const SliverFillRemaining(
                    child: LoadingWidget(),
                  );
                } else if (controller.productList == null ||
                    controller.productList?.isEmpty == true) {
                  return const SliverFillRemaining(
                    child: Center(child: Text('Không có dữ liệu')),
                  );
                }

                return SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        var item = controller.productList![index];
                        return Obx(() {
                          return ProductCard(
                            isMemberVip: false,
                            productModel: item,
                            isFavorited: false,
                            onFav: () {
                              // controller.addProductIntoFavorites(item);
                            },
                            onTap: () {
                              // controller.openProduct(product: item);
                            },
                            onAdd: () {
                              // controller.account.isMemberVip
                              //     ? controller.addProduct(product: item)
                              //     : controller.openComboMember();
                            },
                          );
                        });
                      },
                      childCount: controller.productList!.length,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: widthCard / heightCard,
                        crossAxisSpacing: paddingOfItem,
                        mainAxisSpacing: paddingOfItem,
                        crossAxisCount: 2));
              })),
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ]),
      ),
    );
  }
}
