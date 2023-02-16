import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({Key? key}) : super(key: key);
  final IconSize kucuk = IconSize();
  final IconColors renk = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HelloWorld')),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_rounded,
                  color: Theme.of(context)
                      .backgroundColor, //rengi temadan alirsak farkli arka planlara otomatik olarak uyum saglar.
                  size: kucuk.smallicon))
        ],
      ),
    );
  }
}

class IconSize {
  final double smallicon = 40;
}

class IconColors {
  final Color bouquet = const Color(0xffB384AF);
}
