import 'package:flutter/material.dart';
import 'package:flutter_giris/101/ders_32.dart';

class NavigationBarLearn extends StatefulWidget {
  const NavigationBarLearn({Key? key}) : super(key: key);

  @override
  State<NavigationBarLearn> createState() => _NavigationBarLearnState();
}

class _NavigationBarLearnState extends State<NavigationBarLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NavigatorManager()
              .navigateToWidget(context, const ListViewBuilderLearnn());
        },
        child: Icon(Icons.skip_next),
      ),
    );
  }
}

class NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog:
            true)); //true olunca sayfaya yana gecis seklinde degil dikey gecis olarak gecer
  }
}
