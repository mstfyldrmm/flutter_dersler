import 'package:flutter/material.dart';

class GecisWidget extends StatefulWidget {
  const GecisWidget({Key? key, this.isOkey = false}) : super(key: key);
  final bool isOkey;

  @override
  State<GecisWidget> createState() => _GecisWidgetState();
}

class _GecisWidgetState extends State<GecisWidget> {
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
          onPressed: () {
            Navigator.of(context).pop(!widget.isOkey);
          },
          icon: Icon(Icons.check),
          label: widget.isOkey ? const Text('Red') : const Text('onayla'),
        )));
  }
}
