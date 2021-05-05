import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState() {
  //   // widgets.add(Text('Data Ke 1'));
  //   // widgets.add(Text('Data Ke 2'));
  //   for (int i = 0; i < 15; i++)
  //     widgets.add(
  //       Text(
  //         'Data Ke ' + i.toString(),
  //         style: TextStyle(fontSize: 50),
  //       ),
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar List View'),
        ),
        // body: Column(
        //   // children: <Widget>[
        //   //   Text('Data Ke 1'),
        //   //   Text('Data Ke 2'),
        //   // ],
        //   children: widgets,
        // ),

        // body: ListView(
        //   children: widgets,
        // ),
        //
        //
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "Data Ke " + counter.toString(),
                        style: TextStyle(fontSize: 35),
                      ));
                    });
                    counter++;
                  },
                ),
                RaisedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                    });
                    counter--;
                  },
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
