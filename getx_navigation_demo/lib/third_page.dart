import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_demo/main_page.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Third Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  // Get.back();
                  //
                  Get.back(result: "Ini Nilai Dari Page 3");
                },
                child: Text("Back to Second Page"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Get.offAll(MainPage());
                },
                child: Text("Back to Main Page"),
              )
            ],
          ),
        ));
  }
}
