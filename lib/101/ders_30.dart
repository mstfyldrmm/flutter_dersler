import 'package:flutter/material.dart';

class ListViewLearnn extends StatefulWidget {
  const ListViewLearnn({Key? key}) : super(key: key);

  @override
  State<ListViewLearnn> createState() => _ListViewLearnnState();
}

class _ListViewLearnnState extends State<ListViewLearnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListView(
            children: [
              FittedBox(
                child: Text(
                  'merhaba',
                  style: Theme.of(context).textTheme.headline1,
                  maxLines: 1, //1 satira verilen stringi yazar
                  textScaleFactor:
                      0.7, //verilen deger oraninda stringi sayfaya gore sekillendirir
                ),
              ),
              //fitted box verilen widget ekrana tam olarak oturtur.
              Container(
                color: Colors.red,
                height: 300,
              ),
              Divider(), //araya cizgi atar

              //list view yatayda yapilacaksa eger kesinlikle height belli olmalidir
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection:
                      Axis.horizontal, //listview yatayda kullanim imkani tanir.
                  children: [
                    Container(
                      color: Colors.green,
                      height: 100,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
