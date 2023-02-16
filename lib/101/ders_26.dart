import 'package:flutter/material.dart';
import 'package:flutter_giris/101/ders_17.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.6);
    int _currentPageIndex = 0;

    void _pageIndex(int x) {
      setState(() {
        _currentPageIndex = x;
      });
    }

    //Page View widget birden fazla widgeti sayfa halinde tutar

    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Page index : $_currentPageIndex'),
          FloatingActionButton(
            onPressed: (() {
              _pageController.previousPage(
                  duration: _DurationUtility._duratinLow,
                  curve: Curves
                      .slowMiddle); //duration sureyi belirler, curve ise gecis animasyon tipini
            }),
            child: Icon(Icons.chevron_left),
          ),
          _ProjectPadding(
            deger: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: _DurationUtility._duratinLow,
                  curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),

      appBar: AppBar(),
      body: PageView(
        onPageChanged:
            _pageIndex, //bu sekilde bir void function verilirse verilen degeri sayfaya gore gunceller.
        padEnds:
            false, //true olunca sayfalar ortadan baslarken false olunca en bastan baslar
        controller:
            _pageController, //Diger sayfalarin bir kisminin gozukmesini saglar.
        //Controller ekleyerek artik diger sayfalara pageview ile gecme imkani taninir
        children: [
          ImageLearn(),
          Container(color: Colors.blue),
          Container(color: Colors.green)
        ],
      ), //Widgetlari sayfa halinde tutar
    );
  }
}

class _ProjectPadding extends StatelessWidget {
  const _ProjectPadding({Key? key, required this.deger}) : super(key: key);
  final double deger;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: deger));
  }
}

class _DurationUtility {
  static const _duratinLow = const Duration(seconds: 1);
}
