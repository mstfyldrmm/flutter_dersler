import 'package:flutter/material.dart';

//listtile, listviewların kullanimini daha performansli hale getirir.

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final String adres = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            onTap: () {}, //Tiklanma olayini aktiflestirir.
            title: Image.network(adres),
            subtitle: Text('How do use your card'),
            leading: Icon(Icons.money), //Sol tarafa bir kompanent ekler.
            trailing: Icon(Icons.chevron_right), //sag tarafa kompanent ekler.
          )
        ],
      ),
    );
  }
}
