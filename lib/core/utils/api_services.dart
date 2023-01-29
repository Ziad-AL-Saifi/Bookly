import 'dart:convert';

import 'package:dio/dio.dart';

class Api {
  final _baseURL = 'https://www.googleapis.com/books/v1/volumes';
  final Dio _dio;

  Api(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response data = await _dio.get('$_baseURL$endPoint');
    return data.data;
  }
}
