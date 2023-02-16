import 'package:flutter/material.dart';
import 'package:flutter_giris/101/responsive/responsive_layout.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text('M O B I L E'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.deepPurple[400],
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.deepPurple[300],
                  height: 120,
                ),
              );
            },
            itemCount: 8,
          ))
        ],
      ),
    );
  }
}


//Aspect.Ratio--> child widgetin yukseklik ve genislik oranini belirlemeyi saglar