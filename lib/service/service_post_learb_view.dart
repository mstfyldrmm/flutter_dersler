import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_giris/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  List<PostModel>? _items;
  String? ornek;
  bool _isLoading = false;
  late final Dio _dio;
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    ornek = 'Mustafa';
  }

  Future<void> _addItemToService(PostModel postModel) async {
    final response = await _dio.post('/posts', data: postModel);
    _changeLoading();

    if (response.statusCode == HttpStatus.created) {
      ornek = 'Basarili';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(ornek ?? ''),
          actions: [
            _isLoading
                ? CircularProgressIndicator.adaptive()
                : SizedBox.shrink()
          ],
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: _bodyController,
              decoration: InputDecoration(labelText: 'Body'),
              textInputAction: TextInputAction.next,
            ),
            TextField(
                controller: _userIdController,
                autofillHints: [AutofillHints.creditCardNumber],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'UserId')),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                            userId: int.tryParse(_userIdController.text),
                            body: _bodyController.text,
                            title: _titleController.text,
                          );
                          _addItemToService(model);
                        }
                      },
                child: Text('Send'))
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
