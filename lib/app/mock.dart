import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/app/app_data.dart';
import 'package:get/get.dart';
import '../main.dart' as entryPoint;

// AppConfig appConfig = AppConfig(env: Environment.MOCK, config: {
//     BASE_URL: 'https://lobanhmi88.com/wp-json',
//     REMOTE_CONFIG_KEY: 'n4vocab_dev',
//     FCM_TOPIC: 'test'
//   });
main() {
  AppConfig appConfig = AppConfig(env: Environment.MOCK, config: {
    BASE_URL: 'https://lobanhmi88.com/wp-json',
    REMOTE_CONFIG_KEY: 'n4vocab_dev',
    FCM_TOPIC: 'test'
  });

 

  entryPoint.main();
}

class MockData implements AppData{
  @override
  getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

}