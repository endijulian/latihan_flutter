import 'package:flutter/material.dart';
import 'colorfull_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colorful Button"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorFullButton(Colors.pink, Colors.blue, Icons.adb),
              ColorFullButton(Colors.amber, Colors.red, Icons.comment),
              ColorFullButton(Colors.green, Colors.purple, Icons.computer),
              ColorFullButton(Colors.blue, Colors.yellow, Icons.contact_phone),
            ],
          ),
        ),
      ),
    );
  }
}
