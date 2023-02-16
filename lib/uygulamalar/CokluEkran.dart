import 'package:flutter/material.dart';
import 'package:flutter_giris/uygulamalar/NavigatorGirisApp.dart';
import 'package:flutter_giris/uygulamalar/cv_app.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../101/ders_32.dart';

class CokluEkran extends StatefulWidget {
  const CokluEkran({Key? key}) : super(key: key);

  @override
  State<CokluEkran> createState() => _CokluEkranState();
}

class _CokluEkranState extends State<CokluEkran> {
  PageController _pageController = PageController();
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {
                _pageController.jumpToPage(3);
              },
              child: Text(
                _ProjeStrings().skip,
              ),
            ),
            Spacer(),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: WormEffect(
                activeDotColor: Colors.blue,
              ),
              onDotClicked: (index) {
                _pageController.jumpToPage(index);
              },
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  _pageController.nextPage(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeOutQuart);
                },
                icon: Icon(Icons.arrow_right_alt)),
          ],
        ),
      ),
      body: PageView(controller: _pageController, children: [
        _Pages(
          path: Image.asset(
            _ProjectPaths.firstPath,
          ),
          pageNo: _ProjeStrings().firstPage,
        ),
        _Pages(
          path: Image.asset(_ProjectPaths.secondPath),
          pageNo: _ProjeStrings().secondPage,
        ),
        _Pages(
          path: Image.asset(_ProjectPaths.thirdPath),
          pageNo: _ProjeStrings().thirdPage,
        )
      ]),
    );
  }
}

class _Pages extends StatelessWidget {
  const _Pages({
    Key? key,
    required this.path,
    required this.pageNo,
  }) : super(key: key);

  final Image path;
  final String pageNo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        path,
        Spacer(),
        Text(
          '$pageNo',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _ProjeStrings().pageOne,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CvApp()));
            },
            child: Text(_ProjeStrings().go)),
        Spacer()
      ],
    );
  }
}

class _ProjeStrings {
  final String pageOne =
      'Here you can write the description of this\npage, in order to explain something';
  final String firstPage = 'First Page';
  final String secondPage = 'Second Page';
  final String thirdPage = 'Third Page';
  final String skip = 'Skip';
  final String go = "Let's go";
}

class _ProjectPaths {
  static String firstPath = 'assets/png/1.png';
  static String secondPath = 'assets/png/2.png';
  static String thirdPath = 'assets/png/3.png';
}
