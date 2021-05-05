import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_demo/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              // Get.to(
              //   SecondPage(),
              //   transition: Transition.zoom,
              //   duration: Duration(seconds: 2),
              // );
              //
              Get.toNamed('/second?name=Endi Julian&from=Indonesia',
                  arguments: ['Hello', 'World']);
            },
            child: Text("Go to Second Page"),
          ),
        ));
  }
}
