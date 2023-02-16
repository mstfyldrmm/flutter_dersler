import 'package:flutter/material.dart';
import 'package:flutter_giris/202/model_learn.dart';

class ModelViewLearn extends StatefulWidget {
  const ModelViewLearn({Key? key}) : super(key: key);

  @override
  State<ModelViewLearn> createState() => _ModelViewLearnState();
}

class _ModelViewLearnState extends State<ModelViewLearn> {
  PostModel6 user6 = PostModel6(
      body:
          'a'); //final yerine PostModel6 kullanirsak artik degisebilme imkani tanir
  PostModel7 user7 = PostModel7(title: 'baslik');
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final user1 = PostModel1()
      ..userId = 1
      ..id = 25
      ..title = 'Selam';
    user1.body = "Hello";

    final user2 = PostModel2(1, 'asdf', 2, 'jkkjkj');
    user2.body = "qwwqwq";

    final user3 = PostModel3(1, 2, "aaa", "bbb");

    final user4 = PostModel4(userId: 2, id: 1, title: "sdfsd", body: "eeee");

    final user5 = PostModel5(userId: 2, id: 1, title: "itle", body: "body");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          user6 = PostModel6(title: 'On pressed');
          user7 = user7.copywith(title: 'Sadece baslik degisti');
        });
      }),
      appBar: AppBar(
        title: Text(user6.title ?? "Veri mevcut degil"),
      ),
    );
  }
}
//title: Text(user6.body) yaptigimizda hata vermesinin sebebi text widgeti string degerler alir user6.body null olabilen bir degisken