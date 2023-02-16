import 'package:flutter/material.dart';
import 'package:flutter_giris/demos/color_demos.dart';
import 'package:flutter_giris/uygulamalar/cv_app.dart';

class TabLearn3 extends StatefulWidget {
  const TabLearn3({Key? key}) : super(key: key);

  @override
  State<TabLearn3> createState() => _TabLearn3State();
}

class _TabLearn3State extends State<TabLearn3> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody:
              true, //floating action butondaki yarim daire boslugunu verir.
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(0);
          }),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: _myTabView(),
          ),
          body: _tabBarView(),
        ));
  }

  TabBar _myTabView() {
    return TabBar(
        indicatorColor: Colors.white,
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.orange,
        controller: _tabController,
        tabs: _MyTabViews.values
            .map((e) => Tab(
                  text: '${e.name}',
                ))
            .toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(
        physics:
            NeverScrollableScrollPhysics(), //Sayfanin mause ile yana kaydirilmasini onler
        controller: _tabController,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
          ColorDemos(),
          CvApp()
        ]);
  }
}
//Tabbar, ornegin uygulamada birden fazla  sayfa mevcut ve  bunlar arasinda geciş işlemleri mevcutsa  bunu tabbar saglar.

enum _MyTabViews { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabViews {}
