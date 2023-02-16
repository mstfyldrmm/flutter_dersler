import 'package:flutter/material.dart';

class ButtonOgren extends StatelessWidget {
  const ButtonOgren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: (() {}), child: Text('save')),
          ElevatedButton(onPressed: (() {}), child: Text('data')),
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(onPressed: () {}, child: Text('data')),
          //Sadece text tabanli alani tiklamak icin (digerlerinde belirli bir alani tuslar)
          InkWell(onTap: () {}, child: const Text("SeciliAlan"))
        ],
      ),
    );
  }
}
