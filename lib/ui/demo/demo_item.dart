import 'package:flutter/material.dart';

class DemoItem {
  String? title;
  String? desc;
  String? screenName;
  String? widgetName;

  Widget? screen;

  DemoItem();
  DemoItem.from(this.title, this.screenName);

  showScreen(BuildContext context) {
    Widget src = screenOf(screenName!)!;
    nav(context, src);
  }
}

nav(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ),
  );
}

List<DemoItem> getList() {
  List<DemoItem> data = List.empty(growable: true);
  DemoItem item = DemoItem();

  item.title = "Home Page Car Shop";
  item.desc = "A screen for login app";
  item.screenName = "home";
  data.add(item);

  item = DemoItem();
  item.title = "Home Fashion";
  item.desc = "A screen for login app";
  item.screenName = "home1";
  data.add(item);

  item = DemoItem();
  item.title = "Home Model";
  item.desc = "A screen for login app";
  item.screenName = "homelayout";
  data.add(item);

  item = DemoItem();
  item.title = "Home Dashboard";
  item.desc = "A screen for login app";
  item.screenName = "dashboard";
  data.add(item);

  item = DemoItem();
  item.title = "Home Drawer Layout";
  item.desc = "A screen for login app";
  item.screenName = "drawerlayout";
  data.add(item);

  return data;
}

Widget? screenOf(String screenName) {
  switch (screenName) {
    // case "home":
    //   return HomePage();
    // case "home1":
    //   return Home1();
    // case "homelayout":
    //   return HomeLayout();
    // case "dashboard":
    //   return UserDashboard();
    // case "drawerlayout":
    //   return HomeDrawerLayout();
    // case "login2":
    //   return LoginPage2();
    // case "login3":
    //   return Login3();
    default:
      return null;
  }
}
