import 'package:flutter/material.dart';

class MyCollection extends StatefulWidget {
  const MyCollection({Key? key}) : super(key: key);

  @override
  State<MyCollection> createState() => _MyCollectionState();
}

class _MyCollectionState extends State<MyCollection> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = _CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CardWidget(model: _items[index]);
        },
        itemCount: _items.length,
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingGeneral,
          child: Column(
            children: [
              Image.network(
                _model.imagePath,
                fit: BoxFit.cover,
                height: 200, //image alana tam olarak sigmasini saglar
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text("${_model.price} eth")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String title;
  final String imagePath;
  final double price;

  CollectionModel(
      {required this.title, required this.imagePath, required this.price});
}

class PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingBottom = EdgeInsets.only(bottom: 20);
  final paddingGeneral = EdgeInsets.all(20);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20);
}

class _CollectionItems {
  late final List<CollectionModel> items;

  _CollectionItems() {
    items = [
      CollectionModel(
          title: 'Abstract Art',
          imagePath: 'https://picsum.photos/200/300',
          price: 3.14),
      CollectionModel(
          title: 'Abstract Art2',
          imagePath: 'https://picsum.photos/200/300',
          price: 3.14),
      CollectionModel(
          title: 'Abstract Art3',
          imagePath: 'https://picsum.photos/200/300',
          price: 3.14),
      CollectionModel(
          title: 'Abstract Art4',
          imagePath: 'https://picsum.photos/200/300',
          price: 3.14),
    ];
  }
}
