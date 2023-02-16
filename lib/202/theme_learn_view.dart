import 'package:flutter/material.dart';

class ThemeLearn extends StatefulWidget {
  const ThemeLearn({Key? key}) : super(key: key);

  @override
  State<ThemeLearn> createState() => _ThemeLearnState();
}

class _ThemeLearnState extends State<ThemeLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
