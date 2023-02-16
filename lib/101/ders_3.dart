import 'package:flutter/material.dart';
//Container sized box learning
//Sizedbox bize iskelet bir kutu olusturur.

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Text('a' * 500),
        ),
        const SizedBox.shrink(),
        SizedBox.square(
          dimension: 50,
          child: Text('b' * 50),
        ),
        Container(
          width: 50,
          height: 50,
          child: Text('c' * 50),
          constraints:
              const BoxConstraints(maxWidth: 150, minWidth: 50, maxHeight: 100),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),//diger widgetlar ile arasindaki birakilacak mesafe ayaridir.
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.white12]),
              boxShadow: const [
                BoxShadow(color: Colors.green, offset: Offset(0.1, 1))
              ]),
        )
      ],
    ));
  }
}
