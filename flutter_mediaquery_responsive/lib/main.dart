import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Media Query'),
      ),
      // body: Container(
      //   color: Colors.red,
      //   width: MediaQuery.of(context).size.width / 3,
      //   height: MediaQuery.of(context).size.height / 2,
      // ),
      //
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: generateContainer(),
            )
          : Row(
              children: generateContainer(),
            ),
    );
  }

  List<Widget> generateContainer() {
    return [
      Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.green,
      ),
      Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    ];
  }
}
