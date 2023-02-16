import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          flex: 4,
          child: Row(children: [
            Expanded(flex: 1, child: Container(color: Colors.red)),
            Expanded(flex: 1, child: Container(color: Colors.amberAccent)),
            Expanded(flex: 1, child: Container(color: Colors.blueAccent)),
          ]),
        ),
        Spacer(flex: 3),
        Expanded(
          flex: 2,
          child: Row(
            //Yan yana aralarinda esit bosluk icin
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [Text('a1'), Text('a2'), Text('a3')],
          ),
        )
      ]),
    );
  }
}

//Column alt alta widget eklemeye imkan tanirken row yan yana widget eklemeyi saglar.
//Expanded, verilen widgetlari widget miktarina gore esit olarak alan saglar.
//flex : 4 widget
//flex : 2 widget
//flex : 2 widget
//flex : 2 widget  ekrani 10(flexlerin toplami : 10) parcaya boler ve hepsini flex katsayisina gore dagitir.