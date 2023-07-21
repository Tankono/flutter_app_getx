import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/app/app_data.dart';
import 'package:flutter_app_getx/repository/product_repo.dart';
import 'package:get/get.dart';

main() {

  AppConfig appConfig = AppConfig(env: Environment.DEV, config: {
    BASE_URL: 'https://lobanhmi88.com/wp-json',
    REMOTE_CONFIG_KEY: 'n4vocab_dev',
    FCM_TOPIC: 'test'
  });

    Get.put<ProductData>(ProductApi(), permanent: true);

}

class ApiData implements AppData{
  @override
  getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}