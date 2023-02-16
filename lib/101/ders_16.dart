import 'package:flutter/material.dart';

class CardLearnn extends StatelessWidget {
  const CardLearnn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Onemli Detaylar'),
      ),
      body: Column(
        children: [
          _CardTanimi(
              child: SizedBox(
            child: Center(
              child: Text('Ali'),
            ),
            height: 100,
            width: 100,
          ))
        ],
      ),
    );
  }
}

class _CardTanimi extends StatelessWidget {
  final Widget child;
  const _CardTanimi({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.transparent,
      child: SizedBox(
        height: 100,
        width: 300,
        child: child,
      ),
      margin: EdgeInsets.all(10), //padding iceriyi, margin disariyi kisitlar.
    );
  }
}
