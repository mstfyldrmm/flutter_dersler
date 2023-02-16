import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'UserPostModel.dart';

class ServiceApp extends StatefulWidget {
  const ServiceApp({Key? key}) : super(key: key);

  @override
  State<ServiceApp> createState() => _ServiceAppState();
}

class _ServiceAppState extends State<ServiceApp> {
  final String _url = 'https://reqres.in/api/users';
  late final Dio _dio;
  List<UserPostModel>? _items;
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _url));
    _readData();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _readData() async {
    _changeLoading();
    final response = await Dio().get(_url);

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => UserPostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
          actions: [
            _isLoading
                ? CircularProgressIndicator.adaptive()
                : SizedBox.shrink()
          ],
        ),
        body: ListView.builder(
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return ListTile();
            //title: Text(_items?[index]. ?? ''),
            //subtitle: Text(_items?[index]. ?? ''));
          },
        ));
  }
}
