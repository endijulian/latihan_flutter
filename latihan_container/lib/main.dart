import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Container'),
        ),
        body: Container(
          color: Colors.red,
          // margin: EdgeInsets.all(10),
          margin: EdgeInsets.fromLTRB(25, 10, 15, 20),
          // padding: EdgeInsets.all(10),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            margin: EdgeInsets.all(10),
            // color: Colors.blue,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.amber, Colors.blue],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
