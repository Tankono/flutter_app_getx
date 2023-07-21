// ignore_for_file: constant_identifier_names

enum Environment { MOCK,DEV,STAGING, PRODUCTION }

const String HOST = "_host";
const String API = "_api";
const String BASE_URL = "_baseurl";
const String FLAVOR_NAME = "_flavorname";
const String REMOTE_CONFIG_KEY = "_remoteconfigkey";
const String COURSE_CODE = "_coursecode";
const String FCM_TOPIC = "_fcmTopic";
const String STORE = "_store";

// Common config
const String UNCLOCKED_PROGRESS = "UNCLOCKED";
const String COMPLETED_PROGRESS = "COMPLETED";
const String LOCKED_PROGRESS = "LOCKED";

class AppConfig {
  Map<String, dynamic>? config;
  Environment env = Environment.MOCK;
  AppConfig({this.config, required this.env});

  get host => config![HOST];
  get baseURL => config![BASE_URL];
  // get remoteConfigKey => config![REMOTE_CONFIG_KEY];
  // get defaultCourseId => config![COURSE_CODE];
  // get fcmTopicDefault => config![FCM_TOPIC];
  // get androidAppId => "com.app.foxtoy";
  // get iosAppId => "id1559854508"; // not
  // get store => config![STORE] ?? "";

  // // Dynamic variable
  // String? courseId;
  // String? videoIntroURL;
  // String? fcmTopics;
}
