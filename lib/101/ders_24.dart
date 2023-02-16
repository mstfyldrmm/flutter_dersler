import 'package:flutter/material.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  int _countHello = 0;

  void _updateCount(bool ifade) {
    if (ifade) {
      _countValue += 1;
    } else {
      _countValue -= 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize:
            MainAxisSize.min, //iki widget in ayni oranda sikismasini saglar
        children: [_incrementsWigdet(), _buttonPadding()],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headline4,
          )),
          const Placeholder(),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  ++_countHello;
                });
              },
              child: Text('merhaba $_countHello'))
        ],
      ),
    );
  }

  FloatingActionButton _incrementsWigdet() {
    print(
        'Calisti'); //Burada bu metod cagirilmamasina ragmen cagiriliyor cunku _count hellodaki degisiklil tum sayfayi etkiler
    return FloatingActionButton(
        onPressed: (() {
          _updateCount(true);
        }),
        child: Icon(
          Icons.add,
        ));
  }

  Padding _buttonPadding() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCount(false);
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
