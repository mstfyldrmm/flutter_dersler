import 'package:flutter/material.dart';
import '../demos/counter_hello.dart';

class StatefullLearnn extends StatefulWidget {
  const StatefullLearnn({Key? key}) : super(key: key);

  @override
  State<StatefullLearnn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearnn> {
  int _countValue = 0;

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
          const CounterHello(),
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
//Onceki projedeki degisimi disaridan halledip projeye dahil ettik
//Bu sayede degisimi ilgili alanda tuttuk.
//Amac : Baska kompanenti yaparken ana kompanenti etkilemesin
