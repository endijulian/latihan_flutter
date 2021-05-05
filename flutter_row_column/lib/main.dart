import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Latihan Row Dan Column'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Text('Text 1'),
//             Text('Text 2'),
//             Text('Text 3'),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Column Ke Bawah Row Kesamping'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Text 1'),
            Text('Text 2'),
            Row(
              children: [
                Text('Text 4'),
                Text('Text 5'),
              ],
            ),
          ],
        ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text('Text 1'),
        //     Text('Text 2'),
        //   ],
        // ),
      ),
    );
  }
}
