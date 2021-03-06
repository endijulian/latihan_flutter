import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(children: [
            // Card(
            //   elevation: 10,
            //   child: Row(children: [
            //     Container(
            //         margin: EdgeInsets.all(5), child: Icon(Icons.account_box)),
            //     Text("Account Box"),
            //   ]),
            // )
            buildCard(Icons.account_box, "Account Box"),
            buildCard(Icons.adb, "Serangga Android"),
            // Card(
            //   elevation: 10,
            //   child: Row(children: [
            //     Container(
            //         margin: EdgeInsets.all(5), child: Icon(Icons.account_box)),
            //     Text("Account Box"),
            //   ]),
            // )
          ]),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 10,
      child: Row(children: [
        Container(
            margin: EdgeInsets.all(5),
            child: Icon(
              iconData,
              color: Colors.green,
            )),
        Text(text),
      ]),
    );
  }
}
