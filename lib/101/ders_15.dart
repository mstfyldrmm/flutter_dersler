import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            shape: StadiumBorder(),
            color: Colors.red,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('Ali'),
              ),
            ),
            margin:
                EdgeInsets.all(10), //padding iceriyi, margin disariyi kisitlar.
          ),
          Card(
            color: Theme.of(context).colorScheme.onErrorContainer,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
            margin:
                EdgeInsets.all(10), //padding iceriyi, margin disariyi kisitlar.
          )
        ],
      ),
    );
  }
}


//Card borders
//Stadiumborders : Stadyum seklini verir