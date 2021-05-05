import 'package:api_demo/post_result_model.dart';
import 'package:api_demo/usser_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // PostResult postResult = null;
  // User user = null;
  //
  String output = "No Data";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Api Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Text("Hasil Kembalian"),
              // Text((postResult != null)
              //     ? postResult.id +
              //         " | " +
              //         postResult.name +
              //         " | " +
              //         postResult.job +
              //         " | " +
              //         postResult.created
              //     : 'Tidak Ada Data'),
              //
              //
              // Text((user != null)
              //     ? user.id + " | " + user.name
              //     : 'Tidak Ada Data'),
              //
              Text(output),
              //
              RaisedButton(
                onPressed: () {
                  // PostResult.connectToAPI("Endi", "Web Developer")
                  //     .then((value) => {
                  //           postResult = value,
                  //           setState(() {}),
                  //         });
                  //
                  // User.connectToAPI("2").then((value) {
                  //   user = value;
                  //   setState(() {});
                  // });
                  //
                  //
                  User.getUser("2").then((users) => {
                        output = "",
                        for (int i = 0; i < users.length; i++)
                          output = output + "[" + users[i].name + "]",
                        setState(() {})
                      });
                },
                child: Text("GET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
