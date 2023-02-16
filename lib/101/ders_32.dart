import 'package:flutter/material.dart';

class ListViewBuilderLearnn extends StatefulWidget {
  const ListViewBuilderLearnn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearnn> createState() => _ListViewBuilderLearnnState();
}

class _ListViewBuilderLearnnState extends State<ListViewBuilderLearnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
          separatorBuilder: (context, index) { //seperatedbuilder ile uretilen widgetlar diger childlarin arasina eklenir
            return const Divider(
              color: Colors.white,
            );
          },
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Column(
                children: [
                  Expanded(
                      child: Image.network('https://picsum.photos/200/300')),
                  Text('$index')
                ],
              ),
            );
          },
          itemCount: 15, //listviewdaki widget sayisini belirler.
        ));
  }
}
