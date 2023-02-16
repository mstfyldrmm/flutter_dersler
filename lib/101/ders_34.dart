import 'package:flutter/material.dart';

class Navigater extends StatefulWidget {
  const Navigater({Key? key, required this.isOK}) : super(key: key);
  final bool isOK;

  @override
  State<Navigater> createState() => _NavigaterState();
}

class _NavigaterState extends State<Navigater> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton.icon(
              icon: Icon(Icons.check,
                  color: widget.isOK ? Colors.red : Colors.green),
              onPressed: () {
                Navigator.of(context).pop(!widget.isOK);
              },
              label: widget.isOK ? Text('Red') : Text('Onayla')),
        ));
  }
}
