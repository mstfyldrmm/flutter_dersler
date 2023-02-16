import 'package:flutter/material.dart';

class PaddingDevam extends StatelessWidget {
  const PaddingDevam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingvertical,
        child: Column(
          children: [
            Container(color: Colors.white, height: 100),
            Container(color: Colors.white, height: 100),
            Padding(
                child: Text('ALi'),
                padding: const EdgeInsets.only(right: 20) +
                    ProjectPadding.pagePaddingvertical)
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingvertical = EdgeInsets.symmetric(horizontal: 110);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
}
