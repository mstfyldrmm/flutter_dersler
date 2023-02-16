import 'package:flutter/material.dart';
//Sayfa yapiyorsak kesinlikle statelesswidget
//Padding, diger kompanentler ile arasindaki mesafeyi uygun bicimde duzenlenir.

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(color: Colors.white, height: 100),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Container(
              color: Colors.white,
              height: 100,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text('Ali'),
          )
        ],
      ),
    );
  }
}
