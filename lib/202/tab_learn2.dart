import 'package:flutter/material.dart';

class TabLearn2 extends StatefulWidget {
  const TabLearn2({Key? key}) : super(key: key);

  @override
  State<TabLearn2> createState() => _TabLearn2State();
}

class _TabLearn2State extends State<TabLearn2> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
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
            child: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.orange,
              tabs: [
                Tab(
                  text: 'Page1',
                ),
                Tab(
                  text: 'Page2',
                )
              ],
            ),
          ),
          appBar: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.yellow,
            controller: _tabController,
            tabs: [
              Tab(
                text: 'Page1',
              ),
              Tab(
                text: 'Page2',
              )
            ],
          ),
          body: TabBarView(
              physics:
                  NeverScrollableScrollPhysics(), //Sayfanin mause ile yana kaydirilmasini onler
              controller: _tabController,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                )
              ]),
        ));
  }
}
//Tabbar, ornegin uygulamada birden fazla  sayfa mevcut ve  bunlar arasinda geciş işlemleri mevcutsa  bunu tabbar saglar.


enum _MyTabViews{
  home, settings, favorite, profile
}