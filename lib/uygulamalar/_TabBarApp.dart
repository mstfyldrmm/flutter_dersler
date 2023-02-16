import 'package:flutter/material.dart';
import 'package:flutter_giris/demos/iletisimPage.dart';
import 'package:flutter_giris/uygulamalar/PaymentApp.dart';
import 'package:flutter_giris/uygulamalar/cv_app.dart';
import 'package:flutter_giris/uygulamalar/not_app.dart';

class TabBarApp extends StatefulWidget {
  const TabBarApp({Key? key}) : super(key: key);

  @override
  State<TabBarApp> createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> with TickerProviderStateMixin {
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
        children: [CvApp()]);
  }
}

enum _MyTabViews { cv, iletisim }
