import 'package:flutter/material.dart';

class CounterHello extends StatefulWidget {
  const CounterHello({Key? key}) : super(key: key);

  @override
  State<CounterHello> createState() => _CounterHelloState();
}

class _CounterHelloState extends State<CounterHello> {
  int _countHello = 0;
  void _updateCountHello() {
    setState(() {
      ++_countHello;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _updateCountHello, child: Text('merhaba $_countHello'));
  }
}