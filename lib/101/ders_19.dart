import 'package:flutter/material.dart';
//Kendi ozel widget olusturma

class CustomWidgetLearn extends StatelessWidget {
  CustomWidgetLearn({
    Key? key,
  }) : super(key: key);

  final String title = 'Food';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context)
                      .size
                      .width, //Bu metod, kompanentin sayfanin genisligi kadar olmasini saglar.
                  child: CustomFoodButton(title: title)),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          CustomFoodButton(title: 'apple')
        ]));
  }
}

class _PaddingItems {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets buyukPadding = const EdgeInsets.all(16);
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtility, _PaddingItems {
  CustomFoodButton({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: redColor, shape: const StadiumBorder()),
      onPressed: () {},
      child: Center(
        child: Padding(
          padding: buyukPadding,
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: whiteColor,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
