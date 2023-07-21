import 'package:flutter_app_getx/data/currency_util.dart';
import 'package:json_annotation/json_annotation.dart';
part 'response_models.g.dart';

@JsonSerializable()
class LoginResponse {
  final String token;
  @JsonKey(name: 'user_email')
  final String email;
  @JsonKey(name: 'user_nicename')
  final String nickname;
  @JsonKey(name: 'user_display_name')
  final String displayName;

  LoginResponse(
      {required this.token,
      required this.email,
      required this.nickname,
      required this.displayName});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class Product {
  final int id;
  final String name;
  final String permalink;
  final String type;
  final String status;
  final String description;
  @JsonKey(name: 'short_description')
  final String shortDescription;
  final String price;
  @JsonKey(name: 'regular_price')
  final String regularPrice;
  @JsonKey(name: 'sale_price')
  final String salePrice;
  @JsonKey(name: 'stock_quantity')
  final String? stockQuantity;
  @JsonKey(name: 'stock_status')
  final String stockStatus;
  final List<dynamic>? categories;
  final List<ProductImage>? images;

  Product(
      {required this.id,
      required this.name,
      required this.permalink,
      required this.type,
      required this.status,
      required this.description,
      required this.shortDescription,
      required this.price,
      required this.regularPrice,
      required this.salePrice,
      this.stockQuantity,
      required this.stockStatus,
      this.categories,
      this.images});

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  List<String> get imagesConverted =>
      images?.map((_productImage) => _productImage.src).toList() ?? [];

  String get priceFormated =>
      price.isNotEmpty ? CurrencyUtil().oCcy.format(double.parse(price)) : "";
}

@JsonSerializable()
class ProductImage {
  final int id;
  final String src;
  final String name;

  ProductImage({required this.id, required this.src, required this.name});

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
  Map<String, dynamic> toJson() => _$ProductImageToJson(this);
}

@JsonSerializable()
class PaymentMethod {
  final String title;
  final String code;

  PaymentMethod({required this.title, required this.code});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}

@JsonSerializable()
class ShippingMethod {
  final String title;
  final String code;

  ShippingMethod({required this.title, required this.code});

  factory ShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingMethodToJson(this);
}

// "status": true,
// "order_status": "processing",
// "order_id": 9288

@JsonSerializable()
class CreateOrderResponse {
  final bool status;

  @JsonKey(name: 'order_status')
  final String orderStatus;

  @JsonKey(name: 'order_id')
  final int orderId;

  CreateOrderResponse(
      {required this.status, required this.orderStatus, required this.orderId});

  factory CreateOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CreateOrderResponseToJson(this);
}
