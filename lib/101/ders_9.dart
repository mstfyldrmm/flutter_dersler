import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _baslik = 'Welcome AppBarLearn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_baslik),
        leading: const Icon(Icons.chevron_left),
        //backgroundColor: Colors.transparent, bunlarin tumunu standart olarak main dart tanimlandi
        //elevation: 0,
        //automaticallyImplyLeading: false, //Sayfada otomatik olarak back butonu gelmemesini saglar.
        //systemOverlayStyle: SystemUiOverlayStyle.light,//bu bildirim cubugunu(saat wifi pil) acik ya da kapali yapmaya imkan tanir.
        //leadingWidth: 26,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mark_email_unread_sharp)),
          const Center(
              child:
                  CircularProgressIndicator()) //Bu satir gonderiliyor mavi daire olusturur
        ],
      ),
    );
  }
}
