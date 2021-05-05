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
          title: Text('Latihan Image'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              // image: NetworkImage(
              //     "https://image.shutterstock.com/image-photo/programming-man-working-on-computer-260nw-1032639931.jpg"),
              // fit: BoxFit.fill,
              // repeat: ImageRepeat.repeat,
              image: AssetImage("images/journey.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
