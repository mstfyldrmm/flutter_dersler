import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            height: 150,
            color: Colors.red,
          ),
          Container(
            height: 50,
            color: Colors.yellow,
          ),
          Container(
            height: 25,
            color: Colors.blue,
          ),
          Positioned(
              //default olarak tum ekrani kaplar
              height: 50,
              top: 0, //ustten verilen bos alan
              right: 0,
              left: 0,
              child: Container(
                color: Colors.cyanAccent,
              )),
          Positioned.fill(
            top: 100,
            child: Container(color: Colors.white),
          )
        ],
      ),
    );
  }
}
//Stack ile ust uste widget olusturmayi saglar.
//Ornekte en altta kirmizi renkli container, daha sonra sari en altta ise mavi kompanennt mevcuttur.