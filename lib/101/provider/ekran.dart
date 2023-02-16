import 'package:flutter/material.dart';
import 'package:flutter_giris/101/provider/state.dart';
import 'package:provider/provider.dart';

class Ekran extends StatefulWidget {
  const Ekran({Key? key}) : super(key: key);

  @override
  State<Ekran> createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(children: [
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Sol Widget',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text('Sehir: ${Provider.of<StateData>(context).sehir}',
                      style: Theme.of(context).textTheme.headline4)
                ],
              ),
            ),
          ),
          Expanded(
            child: SagWidgetA(),
          )
        ]),
      ),
    );
  }
}

class SagWidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 180,
      color: Colors.purple,
      child: Column(children: [
        Text(
          'SagWidget B',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetC()
      ]),
    );
  }
}

class SagWidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Function cityMethod = Provider.of<StateData>(context).newCity;
    return Container(
      color: Colors.white,
      height: 150,
      width: 160,
      child: Column(children: [
        Text(
          'SagWidget C',
          style: TextStyle(fontSize: 20),
        ),
        Text(
          'Şehir: ${Provider.of<StateData>(context).sehir} ',
          style: TextStyle(fontSize: 20),
        ),
        TextField(onChanged: (input) {
          //Burada texfielda girilen sehir bilgisini providerla haberlesen tum widgetlarda guncelledik.
          //cityMethod(input); method seklinde yapma sebebimiz burada provider kullanirsak,
          //hem dinleme hemde deger guncelleme icin surekli rebuilt edilmesi gerekirdi. Bu mumkun degil
          //Provider.of<StateData>(context).newCity(input); Bu hatali kullanimdir.
          Provider.of<StateData>(context, listen: false).newCity(input);
        })
      ]),
    );
  }
}

class SagWidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(children: [
        Text(
          'SagWidget A',
          style: TextStyle(fontSize: 20),
        ),
        SagWidgetB()
      ]),
    );
  }
}
