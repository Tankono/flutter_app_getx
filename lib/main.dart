import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_getx/app/app_constants.dart';
import 'package:flutter_app_getx/app/app_data.dart';
import 'package:flutter_app_getx/app/message.dart';
import 'package:flutter_app_getx/di/app_inject.dart';
import 'package:flutter_app_getx/ui/app_pages.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

AppConfig? appConfig;
AppData? appData;

// var app = MaterialApp(
//   title: 'Localizations Sample App',
//   localizationsDelegates: [
//     GlobalMaterialLocalizations.delegate,
//     GlobalWidgetsLocalizations.delegate,
//     GlobalCupertinoLocalizations.delegate,
//   ],
//   supportedLocales: [
//     Locale('en'), // English
//     Locale('es'), // Spanish
//   ],
//   home: DemoPage(),
// );
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
    // theme: appThemeData,
    getPages: AppPages.pages,
    initialRoute: Routes.DEMO,
    initialBinding: BindingsBuilder(() {}),
  );

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(getMaterialApp);
  });
}
