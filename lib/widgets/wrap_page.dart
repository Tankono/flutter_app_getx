// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
// import 'package:banh_mi_88/common/constant/colors.dart';

class WrapPage extends StatefulWidget {
  final Key? keyScaffold;
  final Widget? drawer;
  final Color? iosColor;
  final Color backgroundColor;
  final Widget child;
  final Widget? bottomNav;
  final Widget? fab;
  final Color statusBarColor;
  final bool preventBack;
  final bool? top;

  const WrapPage(
      {Key? key,
      this.keyScaffold,
      this.drawer,
      required this.child,
      this.bottomNav,
      this.iosColor = Colors.white,
      this.fab,
      required this.backgroundColor,
      this.statusBarColor = Colors.transparent,
      this.preventBack = false,
      this.top})
      : super(key: key);

  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> with WidgetsBindingObserver {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      changeStatusBardColor(widget.statusBarColor);
    }
    super.didChangeAppLifecycleState(state);
  }

  changeStatusBardColor(Color color) async {
    // await FlutterStatusbarcolor.setStatusBarColor(color, animate: true);
    // await FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        // For Android.
        // Use [light] for white status bar and [dark] for black status bar.
        statusBarIconBrightness: Brightness.dark,
        // For iOS.
        // Use [dark] for white status bar and [light] for black status bar.
        statusBarBrightness: Brightness.light,
        statusBarColor: widget.statusBarColor,
      ),
      child: Container(
        color: widget.iosColor,
        child: SafeArea(
          top: widget.top ?? true,
          child: Scaffold(
            key: widget.keyScaffold,
            drawer: widget.drawer,
            backgroundColor: widget.backgroundColor,
            extendBody: true,
            body: widget.child,
            bottomNavigationBar: widget.bottomNav ?? const SizedBox(),
            floatingActionButton: widget.fab ?? const SizedBox(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        ),
      ),
    );
  }
}
