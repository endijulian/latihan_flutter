import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  bool isAccepted = false;
  Color targetColor;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Dragable'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable(
                  data: color1,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      // color: Colors.red,
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      // color: Colors.red,
                      color: color1.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
                Draggable(
                  data: color2,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      // color: Colors.red,
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      color: Colors.grey,
                      shape: StadiumBorder(),
                      elevation: 0,
                    ),
                  ),
                  feedback: SizedBox(
                    height: 50,
                    width: 50,
                    child: Material(
                      // color: Colors.red,
                      color: color2.withOpacity(0.7),
                      shape: StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget(
              onWillAccept: (value) => true,
              onAccept: (value) {
                isAccepted = true;
                targetColor = value;
              },
              builder: (context, candidates, rejected) {
                return (isAccepted)
                    ? SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: targetColor,
                          shape: StadiumBorder(),
                        ),
                      )
                    : SizedBox(
                        height: 100,
                        width: 100,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
