import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_demo/main_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RaisedButton(
        onPressed: () {
          // Get.off(MainPage());
          //
          Get.offNamed('/main');
        },
        child: Text("LOGIN"),
      ),
    ));
  }
}
