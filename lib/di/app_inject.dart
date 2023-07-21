import 'package:flutter/material.dart';
import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/api/local_service.dart';
import 'package:flutter_app_getx/data/product_service.dart';
import 'package:flutter_app_getx/main.dart';
import 'package:flutter_app_getx/repository/product_repo.dart';
import 'package:get/get.dart';

injectComponents() {
  if (appConfig == null) {
    print('Start default witn EVN:MOCK');
    Get.put<ProductData>(ProductMock(), permanent: true);
  }

  appConfig ??= AppConfig(env: Environment.STAGING, config: {
    BASE_URL: 'https://lobanhmi88.com/wp-json',
    REMOTE_CONFIG_KEY: 'n4vocab_dev',
    FCM_TOPIC: 'test'
  });

  Get.put<AppConfig>(appConfig!, permanent: true);
  Get.put<LocalService>(LocalService(), permanent: true);

  // Get.put<AppConfig>(AppConfig(), permanent: true);
  Get.put<ProductService>(ProductService(localService: Get.find()),
      permanent: true);

  // Get.put<ProductData>(ProductMock(), permanent: true);

  WidgetsFlutterBinding.ensureInitialized();
}
