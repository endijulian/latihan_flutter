import 'package:flutter/material.dart';
import 'package:widget_slider/ui/widgets/movie_box.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.pink,
    ];

    PageController controller =
        PageController(initialPage: 0, viewportFraction: 0.6);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Widget Slider"),
      ),
      // body: PageView(
      //   onPageChanged: (index) {
      //     print("Halaman" + index.toString());
      //   },
      //   children: [
      //     Container(color: Colors.red),
      //     Container(color: Colors.green),
      //     Container(color: Colors.blue),
      //     Container(color: Colors.yellow),
      //   ],
      // ),
      //
      body: PageView.builder(
        controller: controller,
        itemCount: colors.length,
        // itemBuilder: (context, index) {
        //   return Container(
        //     color: colors[index],
        //   );
        // },
        //
        //
        //
        //
        itemBuilder: (context, index) => Center(
          child: MovieBox(),
        ),
      ),
    );
  }
}
