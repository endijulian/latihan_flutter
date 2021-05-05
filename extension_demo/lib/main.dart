import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final int x = -10;
  //
  final double x = -5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("EXTENSION DEMO"),
        ),
        body: Center(
          child: Text(
            // x.toString(),
            // IntegerUtil.negate(x).toString(),
            //
            "Bilanagn:" & x.negate().toString(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// class IntegerUtil {
//   static int negate(int number) {
//     return number * -1;
//   }
// }

extension IntegerExtension on int {
  int negate() => -1 * this;
}

extension DoubleExtension on double {
  double negate() => -1 * this;
}

extension StringExtension on String {
  String operator &(String other) => this + "  " + other;
}
