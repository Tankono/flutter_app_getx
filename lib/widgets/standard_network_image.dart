// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../uiresource/colors.dart';
import '../../uiresource/static_icons.dart';


// ignore_for_file: constant_identifier_names
enum ImageShape {
  Reactangle4x5,
  Reactangle5x3,
  Reactangle5x4,
  Rectangle,
  Square,
  Circle,
}

class StandardNetWorkImage extends StatelessWidget {
  final String imageUrl;
  final ImageShape imageShape;
  final ImageShape? placeholderShape;
  final double? width;
  final double? height;
  final BoxFit boxFit;
  final double radius;
  final bool isBorder;
  final Color colorBorder;
  const StandardNetWorkImage(
      {Key? key,
      required this.imageUrl,
      this.imageShape = ImageShape.Rectangle,
      this.placeholderShape,
      this.width,
      this.height,
      this.boxFit = BoxFit.contain,
      this.radius = 20,
      this.isBorder = false,
      this.colorBorder = CustomColors.primary1})
      : super(key: key);

  bool get _isShowBorder => isBorder; //|| imageShape == ImageShape.Circle;

  Widget _renderPlaceholder() {
    final shape = placeholderShape ?? imageShape;
    Widget w;
    switch (shape) {
      case ImageShape.Rectangle:
        w = StaticIcons.placeholder5x3;
        break;
      case ImageShape.Reactangle4x5:
        w = StaticIcons.placeholder4x5;
        break;
      case ImageShape.Reactangle5x3:
        w = StaticIcons.placeholder5x3;
        break;
      case ImageShape.Reactangle5x4:
        w = StaticIcons.placeholder5x4;
        break;
      case ImageShape.Square:
        w = StaticIcons.placeholderSquare;
        break;
      case ImageShape.Circle:
        w = StaticIcons.placeholderCirlce;
        break;
    }

    return Container(
      decoration: BoxDecoration(
        border: _isShowBorder ? Border.all(color: CustomColors.primary1) : null,
        shape: imageShape == ImageShape.Circle
            ? BoxShape.circle
            : BoxShape.rectangle,
      ),
      child: w,
    );
  }

  Widget _renderImageBuilder(
    BuildContext context,
    ImageProvider imageProvider,
  ) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: imageShape == ImageShape.Circle
              ? null
              : BorderRadius.circular(radius),
          border: _isShowBorder ? Border.all(color: colorBorder) : null,
          shape: imageShape == ImageShape.Circle
              ? BoxShape.circle
              : BoxShape.rectangle,
          image: DecorationImage(
            image: imageProvider,
            fit: boxFit,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Text("aa");
    // return CachedNetworkImage(
    //   imageUrl: imageUrl,
    //   width: width,
    //   height: height,
    //   fit: boxFit,
    //   imageBuilder: _renderImageBuilder,
    //   placeholder: (context, url) => _renderPlaceholder(),
    //   errorWidget: (context, url, error) => _renderPlaceholder(),
    // );
  }
}
