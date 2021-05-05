import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_navigation_demo/login_page.dart';
import 'package:getx_navigation_demo/main_page.dart';
import 'package:getx_navigation_demo/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(
          name: '/second',
          page: () => SecondPage(),
          transition: Transition.zoom,
        ),
        GetPage(name: '/main', page: () => MainPage())
      ],
      // home: LoginPage(),
    );
  }
}
