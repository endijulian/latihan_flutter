import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TextEditingController controller = TextEditingController(text: "Nilai Awal");
  TextEditingController inputText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Text Field'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  // border: InputBorder.none,
                  //
                  // border: OutlineInputBorder(),
                  //
                  // prefix: Container(
                  //   width: 5,
                  //   height: 5,
                  //   color: Colors.red,
                  // ),

                  // suffixText: "Test",
                  //
                  suffix: Container(
                    width: 5,
                    height: 5,
                    color: Colors.red,
                  ),
                  //
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  //
                  icon: Icon(Icons.adb),
                  prefixIcon: Icon(Icons.person),
                  labelText: "Name",
                  hintText: "Nama Lengkap",
                  hintStyle: TextStyle(fontSize: 12, color: Colors.blue),
                  prefixText: "Name : ",
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // obscureText: true,
                maxLength: 5,
                // maxLines: 2,
                onChanged: (value) {
                  setState(() {});
                },
                controller: inputText,
              ),
              // Text("Data"),
              Text(inputText.text)
            ],
          ),
        ),
      ),
    );
  }
}
