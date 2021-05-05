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
          title: Text('Title App Bar'),
        ),
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            color: Colors.lightBlue,
            child: Text(
              'Saya sedang melatih kemampuan flutter saya, biar saya menjadi handal dalam flutter',

              //Fungsi 1
              // maxLines: 2,
              // overflow: TextOverflow.ellipsis,
              // overflow: TextOverflow.clip,
              // softWrap: false,

              //Fungsi 2
              // textAlign: TextAlign.right,

              // Fungsi 3
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
