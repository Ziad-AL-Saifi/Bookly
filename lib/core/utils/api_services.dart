import 'package:dio/dio.dart';

class Api {
  final _baseURL = 'https://www.googleapis.com/books/v1/volumes/';
  final Dio dio;

  Api({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response responce = await dio.get('$_baseURL$endPoint');
    return responce.data;
  }
}
