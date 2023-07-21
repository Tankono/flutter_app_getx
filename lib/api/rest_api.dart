import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app_getx/api/base_response.dart';
import 'package:flutter_app_getx/data/post_model.dart';
import 'package:flutter_app_getx/data/response_models.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_api.g.dart';

@RestApi()
abstract class RestAPI {
  factory RestAPI(Dio dio, {String baseUrl}) = _RestAPI;

  // @POST("/jwt-auth/v1/token")
  // Future<LoginResponse> usernamePasswordLogin(
  //     @Body() Map<String, dynamic> body);

  @GET("/api/products")
  Future<List<Product>> getProductList();

  // @GET("/api/payment_method")
  // Future<List<PaymentMethod>> getPaymentMethods();

  // @GET("/api/shipping_method")
  // Future<List<ShippingMethod>> getShippingMethods();

  // @POST("/api/orders/create")
  // Future<CreateOrderResponse> createOrder(@Body() Map<String, dynamic> body);

  // @GET("/api/history")
  // Future<List<OrderDetail>> getOrderList(
  //     @Queries() Map<String, String> queries);

  @GET("/api/history/{orderId}")
  Future<BaseResponse> getOrder(
      @Path("orderId") String id, @Queries() Map<String, String> queries);

  ///////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////////////////////

  @POST("/auth/login_with_google")
  Future<BaseResponse> googleLogin(@Body() Map<String, dynamic> body);

  @PUT("/auth/register")
  Future<BaseResponse> wpRegister(@Body() Map<String, dynamic> body);

  @POST("/auth/login")
  Future<BaseResponse> wpLogin(@Body() Map<String, dynamic> body);

  @GET("/user/profile")
  Future<BaseResponse> getProfile();

  @PUT("/user")
  Future<BaseResponse> updateProfile(@Body() Map<String, dynamic> body);

  // @GET("/push_notification")
  // Future<BaseResponse<NotificationModel>> getNotificationList(
  //     @Queries() Map<String, String> queries);

  // @POST("/image/upload")
  // Future<BaseResponse> uploadPhoto(@Part() File image);

  // @GET("/category")
  // Future<BaseResponse<CategoryModel>> getCategoryList(
  //     @Queries() Map<String, String> queries);

  @GET("/post")
  Future<BaseResponse<PostModel>> getPostList(
      @Queries() Map<String, String> queries);

  // @GET("/address")
  // Future<BaseResponse<AddressModel>> getAddressList(
  //     @Queries() Map<String, String> queries);

  @POST("/address")
  Future<BaseResponse> createAddress(@Body() Map<String, dynamic> body);

  @PUT("/address/{addressId}")
  Future<BaseResponse> updateAddress(
      @Path("addressId") String id, @Body() Map<String, dynamic> body);

  @DELETE("/address/{addressId}")
  Future<BaseResponse> deleteAddress(@Path("addressId") String id);

  @POST("user/subscribe")
  Future<BaseResponse> subcribe();
}
