import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({Key? key, this.initialColor}) : super(key: key);
  final initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _arkaPlan = Colors.transparent;

  void _changeBackrounColor(Color color) {
    setState(() {
      _arkaPlan = color;
    });
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor != _arkaPlan && widget.initialColor != null) {
      _changeBackrounColor(widget.initialColor);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _arkaPlan = widget.initialColor ?? Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _arkaPlan,
      //buttomNavigationBar--> Butonlar ile birlikte menu yapmayi saglar.
      bottomNavigationBar: BottomNavigationBar(onTap: colorOnTap, items: [
        BottomNavigationBarItem(
            icon: ProjeContainer(
              renk: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: ProjeContainer(renk: Colors.blue), label: 'Blue'),
        BottomNavigationBarItem(
            icon: ProjeContainer(renk: Colors.yellow), label: 'yellow'),
      ]),
    );
  }

  void colorOnTap(value) {
    if (value == _ColorsNum.red.index) {
      _changeBackrounColor(Colors.red);
    } else if (value == _ColorsNum.blue.index) {
      _changeBackrounColor(Colors.blue);
    } else if (value == _ColorsNum.yellow.index) {
      _changeBackrounColor(Colors.yellow);
    }
  }
}

//kullaniciya bir siralama(numaralandirma icin)
//Burada renkleri siraya koyduk yani eger degerler 0 dan baslar ise red = 0, blue = 1 ve yellow = 2 olur
enum _ColorsNum { red, blue, yellow }

class ProjeContainer extends StatelessWidget {
  const ProjeContainer({
    Key? key,
    required this.renk,
  }) : super(key: key);

  final Color renk;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Red'),
      color: renk,
      width: 10,
      height: 10,
    );
  }
}
