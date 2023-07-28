import 'package:flutter/material.dart';

import 'package:flutter_app_getx/data/response_models.dart';
import 'package:flutter_app_getx/uiresource/app_text_theme.dart';
import 'package:flutter_app_getx/uiresource/colors.dart';
import 'package:flutter_app_getx/uiresource/static_icons.dart';
import 'package:flutter_app_getx/widgets/standard_network_image.dart';

class ProductCard extends StatefulWidget {
  final bool isMemberVip;
  final Product productModel;
  final bool isFavorited;
  final Function() onTap;
  final Function() onFav;
  final Function() onAdd;
  const ProductCard({
    Key? key,
    required this.isMemberVip,
    required this.productModel,
    required this.isFavorited,
    required this.onTap,
    required this.onFav,
    required this.onAdd,
  }) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // Size size = Size(300, 200);
    final double heightCard = (size.height - 20) / 2.7;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(boxShadow: <BoxShadow>[
            BoxShadow(
              offset: const Offset(0, 5),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Stack(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  child: widget.productModel.imagesConverted.isEmpty
                      ? Image.asset(
                          "assets/images/placeholder_5x4.png",
                          height: heightCard * .6,
                          fit: BoxFit.cover,
                        )
                      : StandardNetWorkImage(
                          imageUrl: widget.productModel.imagesConverted.first,
                          height: heightCard * .6,
                          width: double.infinity,
                          boxFit: BoxFit.cover,
                          imageShape: ImageShape.Reactangle4x5,
                          radius: 16,
                        )),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.productModel.name,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: h14.copyWith(fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Expanded(
                              child: Text(widget.productModel.priceFormated,
                                  overflow: TextOverflow.ellipsis,
                                  style: h14.copyWith(
                                      color: CustomColors.primary1,
                                      fontWeight: FontWeight.w600)),
                            ),
                            // SizedBox(
                            //   width: 30,
                            //   height: 30,
                            //   child: InkWell(
                            //     onTap: widget.onAdd,
                            //     child: widget.isMemberVip
                            //         ? Image.asset("assets/images/add.png",
                            //             scale: 5, color: CustomColors.primary1)
                            //         : Image.asset("assets/images/badge.png",
                            //             color: CustomColors.primary1),
                            //   ),
                            // )
                          ],
                        ),
                      ]),
                ),
              )
            ]),
            Positioned(
                top: -1,
                right: 0,
                child: GestureDetector(
                  onTap: widget.onFav,
                  child: Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              topRight: Radius.circular(12))),
                      child: widget.isFavorited
                          ? StaticIcons.heartFill
                          : StaticIcons.heartOutline),
                ))
          ])),
    );
  }
}
