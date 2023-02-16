import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTabBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBoxB(onChanged: _handleTabBoxChanged, active: _active),
    );
  }
}

class TabBoxB extends StatelessWidget {
  const TabBoxB({Key? key, this.active = false, required this.onChanged})
      : super(key: key);
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          color: active ? Colors.green : Colors.grey,
          child: Center(child: Text(active ? 'Active' : 'Inactive')),
        ),
      ),
    );
  }
}


//Parent widget, cocuk widgetin durumunu yonetti.