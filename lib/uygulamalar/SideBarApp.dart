import 'package:flutter/material.dart';
import 'package:flutter_giris/uygulamalar/cv_app.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController _controller;
    return Scaffold(
      drawer: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('FlutterUser'),
              accountEmail: Text('example@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/png/portre.png',
                    fit: BoxFit.fill,
                    height: 100,
                    width: 100,
                  ),
                ),
              )),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            onTap: () {},
            trailing: ClipOval(
              child: Container(
                child: Center(child: Text('8')),
                color: Colors.red,
                width: 20,
                height: 20,
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CvApp()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
          )
        ],
      ),
      appBar: AppBar(
        title: Text('SideApp'),
      ),
    );
  }
}
