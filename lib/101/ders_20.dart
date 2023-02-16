import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: _CenterCircular(),
          )
        ], //Circular.. metodu, programin backend tarafindan veri alma suresinde bos ekran gostermemek icin kullanilir.
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _CenterCircular extends StatelessWidget {
  const _CenterCircular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}
