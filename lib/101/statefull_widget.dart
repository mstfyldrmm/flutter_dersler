import 'package:flutter/material.dart';

class StatefullWidgetLearn extends StatefulWidget {
  const StatefullWidgetLearn({Key? key}) : super(key: key);

  @override
  State<StatefullWidgetLearn> createState() => _StatefullWidgetLearnState();
}

class _StatefullWidgetLearnState extends State<StatefullWidgetLearn> {
  bool _isTrue = false;
  void _handleTap() {
    setState(() {
      _isTrue = !_isTrue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _handleTap,
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: _isTrue ? Colors.green : Colors.grey,
            child: Center(child: Text(_isTrue ? 'Active' : 'Inactive')),
          ),
        ),
      ),
    );
  }
}
