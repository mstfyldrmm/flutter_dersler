import 'package:flutter/material.dart';
import 'ders_4.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold uygulamanin iskeletini olusturur.
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')),
      body: Text('Merhaba'),
      bottomNavigationBar: Container(
        decoration: MyClass.dekor,
        height: 200,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: 'buton1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: 'buton2'),
        ]),
      ),
      backgroundColor: Colors.black12,
      floatingActionButton: FloatingActionButton(onPressed: () {
        //20-26 arasi kodda butona tiklaninca yeni bir bos alan acilmasini saglar.
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(), //Secenek sayfasi olusuturur.
      bottomSheet: const Text('mustafa'),
    );
  }
}
