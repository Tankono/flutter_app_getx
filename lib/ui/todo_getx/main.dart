import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'db/db_helper.dart';
import 'services/theme_services.dart';
import 'ui/screens/home_screen.dart';
import 'ui/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await DBHelper().database;
  runApp(TodoGetxApp());

}

class TodoGetxApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TodoGetxApp> {
  ThemeServices _ts = ThemeServices();


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Todo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: _ts.theme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

