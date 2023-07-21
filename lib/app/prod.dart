import 'package:flutter_app_getx/app/app_constants.dart';

main() {
  AppConfig _config = AppConfig(env: Environment.PRODUCTION, config: {
    BASE_URL: 'https://lobanhmi88.com/wp-json',
    REMOTE_CONFIG_KEY: 'n4vocab_dev',
    FCM_TOPIC: 'test'
  });
}
