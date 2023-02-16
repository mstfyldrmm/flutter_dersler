import 'package:flutter/material.dart';
import 'package:flutter_giris/demos/color_demos.dart';

class ColorDemosLifeCircular extends StatefulWidget {
  const ColorDemosLifeCircular({Key? key}) : super(key: key);

  @override
  State<ColorDemosLifeCircular> createState() => _ColorDemosLifeCircularState();
}

class _ColorDemosLifeCircularState extends State<ColorDemosLifeCircular> {
  Color? _backroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (() {
                setState(() {
                  _backroundColor = Colors.white;
                });
              }),
              icon: Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          Spacer(),
          Expanded(
              child: ColorDemos(
            initialColor: _backroundColor,
          ))
        ],
      ),
    );
  }
}
