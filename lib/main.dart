import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/app/app_data.dart';
import 'package:flutter_app_getx/app/message.dart';
import 'package:flutter_app_getx/di/app_inject.dart';
import 'package:flutter_app_getx/ui/demo/app_demo.dart';
import 'package:flutter_app_getx/ui/login/auth_mod.dart';
import 'package:flutter_app_getx/ui/todo_getx/main.dart';
import 'package:flutter_app_getx/ui/todos/todos_page.dart';
import 'package:flutter_app_getx/ui/todos1/main.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

AppConfig? appConfig;
AppData? appData;

void main() {
  injectComponents();

  var getMaterialApp = GetMaterialApp(
    builder: EasyLoading.init(),
    locale: Locale('vi', 'US'),
    localeResolutionCallback: (locale, supportedLocales) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale?.languageCode &&
            supportedLocale.countryCode == locale?.countryCode) {
          return supportedLocale;
        }
      }
      return supportedLocales.first;
    },
    translations: Messages(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const TodoList(title: "List"),
    // getPages: AppPages.pages,
    // initialRoute: Routes.DEMO,
    initialBinding: BindingsBuilder(() {}),
  );

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    // runApp(getMaterialApp);
    // runApp(TodoApp1());
    // runApp(TodoGetxApp());
    // runApp(AuthMod());
    runApp(AppDemo());
  });
}
