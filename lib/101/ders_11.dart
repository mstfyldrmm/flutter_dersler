import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Text('Merhaba dunya'), color: Theme.of(context).errorColor),
    );
  }
}

class Renkler {
  final Color orchid = Color(0xffD581CE);
  final Color bermuda = Color.fromRGBO(129, 209, 213, 185);
}
