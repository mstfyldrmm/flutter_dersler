import 'package:flutter/material.dart';

class StackApp extends StatelessWidget {
  const StackApp({Key? key}) : super(key: key);
  final _carHeight = 50.0;
  final _width2 = 200.0;

  @override
  Widget build(BuildContext context) {
    var width2 = 200;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                      bottom: _carHeight / 2,
                      //Verilen alanin tumunu doldurur.
                      child: Image.network(
                        'https://picsum.photos/200/300',
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                    child: SizedBox(
                      width: _width2,
                      child: _CardItems(),
                    ),
                    height: 50,
                    bottom: 0,
                  )
                ],
              )),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }
}

class _CardItems extends StatelessWidget {
  const _CardItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
