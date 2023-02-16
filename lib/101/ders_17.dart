import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              child: Image.asset(
                'assets/png/indir.png',
                fit: BoxFit.cover,
                height: 100,
              ),
              height: 400,
              width: 400,
            )
          ],
        ));
  }
}
