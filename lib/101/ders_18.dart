import 'package:flutter/material.dart';

class ImageLearnn extends StatelessWidget {
  const ImageLearnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 10,
              width: 10,
              child: Image.asset("assets/indir.jpg", fit: BoxFit.cover),
            ),
            Image.network(
              'https://pngtree.com/freepng/apple-on-book-vector-icon-school-and-education_5683999.html',
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.access_alarm_sharp),
            )
          ],
        ));
  }
}

class ImageItems {
  final String appleWithBook = "assets/indir.jpg";
}
