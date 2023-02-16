import 'package:flutter/material.dart';

class WidgetSizeEnumLearn extends StatefulWidget {
  const WidgetSizeEnumLearn({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumLearn> createState() => _WidgetSizeEnumLearnState();
}

class _WidgetSizeEnumLearnState extends State<WidgetSizeEnumLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          color: Colors.teal,
          height: WidgetSizes.normalCardHeight.value(),
        ),
      )
    );
  }
}

/*
extension ne ise yarar??

extension StringExtension on String {
  String first() => this[0];
}

Bu sekilde tum string ifadelerin ilk harfini donen stringlere ozel metod tanimladik
*/

enum WidgetSizes {
  normalCardHeight, circleProfileWidth
}

extension WidgetSizesExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}