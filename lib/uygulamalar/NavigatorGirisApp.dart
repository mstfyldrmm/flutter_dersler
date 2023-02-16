import 'package:flutter/material.dart';
import 'package:flutter_giris/uygulamalar/NavigatorGirisAppp.dart';

class NavigatorApp extends StatefulWidget {
  const NavigatorApp({Key? key}) : super(key: key);

  @override
  State<NavigatorApp> createState() => _NavigatorAppState();
}

class _NavigatorAppState extends State<NavigatorApp> with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                  context, GecisWidget(isOkey: selectedItems.contains(index)));
              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                color:
                    selectedItems.contains(index) ? Colors.green : Colors.red,
              ),
            ),
          );
        }),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.navigate_next), onPressed: (() async {})));
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog:
            true)); //true olunca sayfaya yana gecis seklinde degil dikey gecis olarak gecer
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    //T etiketi, gecis yapilacak sayfadan generic bir deger bekledigi gosterir
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog:
            true)); //true olunca sayfaya yana gecis seklinde degil dikey gecis olarak gecer
  }
}
