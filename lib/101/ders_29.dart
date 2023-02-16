import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Spacer(),
          Expanded(
            child: ListView(
              children: [
                Text(
                  'merhaba',
                  style: Theme.of(context).textTheme.headline1,
                  maxLines: 1, //1 satira verilen stringi yazar
                  textScaleFactor:
                      0.7, //verilen deger oraninda stringi sayfaya gore sekillendirir
                ),
                //fitted box verilen widget ekrana tam olarak oturtur.
                FittedBox(
                  child: Text('Fitted Box'),
                ),

                Container(
                  color: Colors.red,
                  height: 200,
                ),
                Divider(), //araya cizgi atar
                Container(
                  color: Colors.yellow,
                  height: 200,
                ),
                Icon(Icons.close)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
