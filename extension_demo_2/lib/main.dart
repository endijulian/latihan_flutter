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
          title: Text("Extension"),
        ),
        body: Center(
          child: Text(
            "0",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
