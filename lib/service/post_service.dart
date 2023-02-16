import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_giris/service/post_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemService(PostModel postModel, int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<bool> deleteItemService(int id);
}

class PostService implements IPostService {
  final _dio;
  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com'));

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    final response =
        await _dio.post(_PostServicePaths.posts.name, data: postModel);
    return response.statusCode == HttpStatus.created;
  }

  @override
  Future<bool> putItemService(PostModel postModel, int id) async {
    final response =
        await _dio.put(data: postModel, '${_PostServicePaths.posts.name}/$id');
    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    final response = await _dio.get(_PostServicePaths.posts.name);

    try {
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;

        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioError catch (exception) {
      _ShowDebugMessage._showDioError(exception);
    }
    return null;
  }

  @override
  Future<bool> deleteItemService(int id) async {
    final response = await _dio.put('${_PostServicePaths.posts.name}/$id');
    return response.statusCode == HttpStatus.ok;
  }
}

enum _PostServicePaths { posts, comments }

class _ShowDebugMessage {
  static void _showDioError(DioError error) {
    if (kDebugMode) {
      print(error.message);
    }
  }
}
