import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
            )
          ]),
        ));
  }
}
//Tabbar, ornegin uygulamada birden fazla  sayfa mevcut ve  bunlar arasinda geciş işlemleri mevcutsa  bunu tabbar saglar.