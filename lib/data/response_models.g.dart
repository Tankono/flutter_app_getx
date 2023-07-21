// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      token: json['token'] as String,
      email: json['user_email'] as String,
      nickname: json['user_nicename'] as String,
      displayName: json['user_display_name'] as String,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user_email': instance.email,
      'user_nicename': instance.nickname,
      'user_display_name': instance.displayName,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String,
      permalink: json['permalink'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      description: json['description'] as String,
      shortDescription: json['short_description'] as String,
      price: json['price'] as String,
      regularPrice: json['regular_price'] as String,
      salePrice: json['sale_price'] as String,
      stockQuantity: json['stock_quantity'] as String?,
      stockStatus: json['stock_status'] as String,
      categories: json['categories'] as List<dynamic>?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'permalink': instance.permalink,
      'type': instance.type,
      'status': instance.status,
      'description': instance.description,
      'short_description': instance.shortDescription,
      'price': instance.price,
      'regular_price': instance.regularPrice,
      'sale_price': instance.salePrice,
      'stock_quantity': instance.stockQuantity,
      'stock_status': instance.stockStatus,
      'categories': instance.categories,
      'images': instance.images,
    };

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) => ProductImage(
      id: json['id'] as int,
      src: json['src'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ProductImageToJson(ProductImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'src': instance.src,
      'name': instance.name,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    PaymentMethod(
      title: json['title'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'title': instance.title,
      'code': instance.code,
    };

ShippingMethod _$ShippingMethodFromJson(Map<String, dynamic> json) =>
    ShippingMethod(
      title: json['title'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$ShippingMethodToJson(ShippingMethod instance) =>
    <String, dynamic>{
      'title': instance.title,
      'code': instance.code,
    };

CreateOrderResponse _$CreateOrderResponseFromJson(Map<String, dynamic> json) =>
    CreateOrderResponse(
      status: json['status'] as bool,
      orderStatus: json['order_status'] as String,
      orderId: json['order_id'] as int,
    );

Map<String, dynamic> _$CreateOrderResponseToJson(
        CreateOrderResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'order_status': instance.orderStatus,
      'order_id': instance.orderId,
    };
