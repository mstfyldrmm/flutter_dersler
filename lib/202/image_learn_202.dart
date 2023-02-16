import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({Key? key}) : super(key: key);

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: ImagePath.portre.toWidget()),
    );
  }
}

enum ImagePath { portre }

extension ImagePathExtension on ImagePath {
  String path() {
    return 'assets/png/$name.png';
  }

  Widget toWidget() {
    return Image.asset(path());
  }
}
