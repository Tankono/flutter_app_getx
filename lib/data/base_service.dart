// ignore_for_file: avoid_print

// import 'package:banh_mi_88/common/config/app_constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:get/get.dart';
import '../api/rest_api.dart';
// import 'package:banh_mi_88/data/service/auth_service.dart';

class BaseService extends GetxService {
  late RestAPI client;
  final dio = Dio();

  @override
  void onInit() {
    dio.interceptors.add(LogInterceptor(
        responseHeader: false,
        responseBody: true,
        request: true,
        requestBody: true));

    dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (
          RequestOptions requestOptions,
          RequestInterceptorHandler handler,
        ) {
          // AuthService authService = Get.find();
          // if (authService.hasToken()) {
          //   requestOptions.headers['Authorization'] = authService.token;
          // }
          // print(requestOptions.headers);
          // handler.next(requestOptions);
        },
      ),
    );

    final config = Get.find<AppConfig>();
    client = RestAPI(dio, baseUrl: config.baseURL);
    super.onInit();
  }
}
