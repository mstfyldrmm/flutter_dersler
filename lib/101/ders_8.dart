import 'package:flutter/material.dart';

class Ornek extends StatelessWidget {
  const Ornek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10), //10 luk alan
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black, shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            )),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
              child: Text(
                'Place with',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
