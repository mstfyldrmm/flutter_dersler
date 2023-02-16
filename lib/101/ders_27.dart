import 'package:flutter/material.dart';

class StatefullLifeCircularLearn extends StatefulWidget {
  const StatefullLifeCircularLearn({Key? key, required this.message})
      : super(key: key);
  final String message;

  @override
  State<StatefullLifeCircularLearn> createState() =>
      _StatefullLifeCircularLearnState();
}

class _StatefullLifeCircularLearnState
    extends State<StatefullLifeCircularLearn> {
  String _message = "";
  late final bool _isOdd;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    newMethod();
  }

  void newMethod() {
    if (_isOdd) {
      _message += "cift";
    } else {
      _message += "tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_message),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
