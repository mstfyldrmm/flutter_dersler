import 'package:flutter/material.dart';
import 'package:flutter_giris/101/ders_4.dart';

class StateLessLearn extends StatelessWidget {
  const StateLessLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DERS_12'),
      ),
      body: Column(
        children: [
          TitleTextWidget(text: 'Ahmet'),
          TitleTextWidget(text: 'Mehmet'),
          _ContanierBuilder(),
          emptyMethod()
        ],
      ),
    );
  }

  SizedBox emptyMethod() {
    return SizedBox(
      height: 10,
    );
  }
}

class _ContanierBuilder extends StatelessWidget {
  const _ContanierBuilder({
    //bu sekilde sinifa  projeye ozel private siniflar olusuturabiliriz.
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text})
      : super(
          key: key,
        );
  final String
      text; //Widget class icerisinde sonradan deger atama diye bir durum soz konusu degildir. Class in yapıcı metoduna tanimlanir.

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
