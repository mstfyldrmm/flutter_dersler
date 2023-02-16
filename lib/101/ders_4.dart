import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextOgren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Text('a' * 50),
        ),
        const SizedBox.shrink(),
        SizedBox.square(
          dimension: 50,
          child: Text('b' * 50),
        ),
        Container(
          width: 50,
          height: 50,
          child: Text('c' * 50),
          constraints:
              const BoxConstraints(maxWidth: 150, minWidth: 50, maxHeight: 100),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: ProjectContainerDecoration(),
        )
      ],
    ));
  }
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            borderRadius: BorderRadius.circular(10), //seklin kenarlarina ovallik verir.
            gradient:
                const LinearGradient(colors: [Colors.red, Colors.white12]),
            boxShadow: const [
              BoxShadow(color: Colors.green, offset: Offset(0.1, 1))
            ]);
}

//ikinci bir yol

class MyClass {
  static BoxDecoration dekor = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.white12]),
      boxShadow: const [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1))
      ]);
}
