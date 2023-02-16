import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_giris/101/ders_12.dart';

class CvApp extends StatelessWidget {
  const CvApp({Key? key}) : super(key: key);
  final String adres =
      'https://img2.pngindir.com/20180613/ffo/kisspng-portrait-photography-woman-female-beauty-eye-doctor-5b21cec7b325b6.0077806515289422797338.jpg';
  final String adSoyad = 'Mustafa Yildirim';
  final String metin = 'Flutter Developer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //Tum widgetlari ortada saglar
        children: [
          Container(
            color: Colors.blue,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(adres),
            radius: 75,
          ),
          Text(adSoyad, style: Theme.of(context).textTheme.headline4),
          Text(
            metin,
            style: Theme.of(context).textTheme.headline6,
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.phone),
              iconColor: Colors.teal,
              title: Text('+34234234'),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            child: ListTile(
              leading: Icon(Icons.email),
              iconColor: Colors.teal,
              title: Text('example@gmail.com'),
            ),
          ),
        ],
      ),
    );
  }
}
