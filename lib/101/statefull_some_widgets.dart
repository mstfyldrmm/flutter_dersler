import 'package:flutter/material.dart';

class SomeStatefullWidget extends StatefulWidget {
  const SomeStatefullWidget({Key? key}) : super(key: key);

  @override
  State<SomeStatefullWidget> createState() => _SomeStatefullWidgetState();
}

class _SomeStatefullWidgetState extends State<SomeStatefullWidget> {
  bool? _isOkey = false;
  void method(bool? value) {
    setState(() {
      _isOkey = value;
    });
  }

  SingingCharacter? _character = SingingCharacter.mustafa;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      } else {
        return Colors.red;
      }
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Checkbox(
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  checkColor: Colors.yellow,
                  hoverColor: Colors.orange,
                  value: _isOkey,
                  onChanged: (value) {
                    method(value);
                  })),
          ListTile(
            title: Text('Mustafa Yildirim'),
            leading: Radio<SingingCharacter>(
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                value: SingingCharacter.mustafa,
                groupValue: _character),
          ),
          ListTile(
            title: Text('Ahmet Hakan'),
            leading: Radio<SingingCharacter>(
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
                value: SingingCharacter.ahmet,
                groupValue: _character),
          )
        ],
      ),
    );
  }
}

enum SingingCharacter { mustafa, ahmet }
