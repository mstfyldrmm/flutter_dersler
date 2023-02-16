import 'package:flutter/material.dart';

class BottomNavigationApp extends StatelessWidget {
  const BottomNavigationApp({Key? key}) : super(key: key);

  final String baslik = 'Bottom navigation bar ornek';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(baslik)),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home), label: 'Ev', backgroundColor: Colors.red),
        BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Son Haberler',
            backgroundColor: Colors.red),
        BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Kategoriler',
            backgroundColor: Colors.red),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Iletisim',
            backgroundColor: Colors.red),
      ]),
    );
  }
}
