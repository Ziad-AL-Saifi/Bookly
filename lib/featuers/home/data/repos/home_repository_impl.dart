// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:book_app/core/error/feilds.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';

import '../../../../core/utils/api_services.dart';
import 'home_repository.dart';

class RepoHomeImpl implements Repo {
  Api api;
  RepoHomeImpl({
    required this.api,
  });
  @override
  Future<Either<Feiluer, List<BookModel>>>
      fetchBestSellerBooksInHomePage() async {
    http.Response response = await http
        .get(Uri.parse('https://www.googleapis.com/books/v1/volumes?q=cook'));

    Map<String, dynamic> data = jsonDecode(response.body);

    List<BookModel> dataModel = [];
    for (var d in data['items']) {
      dataModel.add(BookModel.fromMap(d));
    }
    print(dataModel);
    return right(dataModel);
  }

  @override
  Future<Either<Feiluer, List<BookModel>>> fetchMainBooksInHomePage() async {
    http.Response response = await http.get(
        Uri.parse('https://www.googleapis.com/books/v1/volumes?q=Programming'));

    Map<String, dynamic> data = jsonDecode(response.body);

    List<BookModel> dataModel = [];
    for (var d in data['items']) {
      dataModel.add(BookModel.fromMap(d));
    }
    print(dataModel);
    return right(dataModel);
  }
}
