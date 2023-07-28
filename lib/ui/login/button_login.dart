import 'package:flutter/material.dart';
import 'package:flutter_app_getx/ui/app_pages.dart';
import 'package:flutter_app_getx/ui/home/lhome_page.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {
        // if (_formKey.currentState?.validate() ?? false) {
        //   _boxLogin.put("loginStatus", true);
        //   _boxLogin.put("userName", _controllerUsername.text);

        //   Navigator.pushReplacement(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) {
        //         return Home();
        //       },
        //     ),
        //   );
        // }
        // EasyLoading.show(status: 'loading...');
        nav(context, HomePage());
      },
      child: const Text("Login"),
    );
  }
}
