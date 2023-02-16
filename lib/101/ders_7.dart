import 'package:flutter/material.dart';

class ButtonOgrenDevam extends StatelessWidget {
  const ButtonOgrenDevam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: (() {}),
            child: Text('save'),
            style: ButtonStyle(
                //Butona tiklayinca turuncu yapma
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.deepOrangeAccent;
              }
            })),
          ),

          ElevatedButton(onPressed: (() {}), child: Text('data')),
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {},
              child: Text('data')),
          //Sadece text tabanli alani tiklamak icin (digerlerinde belirli bir alani tuslar)

          OutlinedButton(
            onPressed: () {},
            child: const Text('Buton'),
            style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red, shape: const CircleBorder()),
          ),
          InkWell(onTap: () {}, child: const Text("SeciliAlan"))
        ],
      ),
    );
  }
}
