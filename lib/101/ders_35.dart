import 'package:flutter/material.dart';

class MediaQueryLearn extends StatefulWidget {
  const MediaQueryLearn({Key? key}) : super(key: key);

  @override
  State<MediaQueryLearn> createState() => _MediaQueryLearnState();
}

class _MediaQueryLearnState extends State<MediaQueryLearn> {
  @override
  Widget build(BuildContext context) {
    final _currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Height: ' + MediaQuery.of(context).size.height.toString()),
            Text('Width: ' + MediaQuery.of(context).size.width.toString()),
            Text('AspectRadio: ' +
                MediaQuery.of(context).size.aspectRatio.toString())
          ],
        ),
      ),
    );
  }
}
