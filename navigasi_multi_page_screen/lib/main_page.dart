import 'package:flutter/material.dart';
import 'package:navigasi_multi_page_screen/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Go To Second Page"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondPage();
              }));
            }),
      ),
    );
  }
}
