import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';

import 'package:book_app/core/error/feilds.dart';

import 'home_repository.dart';
import 'package:http/http.dart' as http;

class RepoHomeImpl implements Repo {
  @override
  Future<Either<Feiluer, List<BookModel>>>
      fetchBestSellerBooksInHomePage() async {
    http.Response response = await http
        .get(Uri.parse('https://www.googleapis.com/books/v1/volumes?q=cook'));

    Map<String, dynamic> data = jsonDecode(response.body);

    List<BookModel> dataModel = [];
    for (var d in data['items']) {
      dataModel.add(BookModel.fromGetDataFromJson(d));
    }
    print(dataModel);
    return right(dataModel);
  }

  @override
  Future<Either<Feiluer, List<BookModel>>> fetchMainBooksInHomePage() {
    // TODO: implement fetchMainBooksInHomePage
    throw UnimplementedError();
  }

  // @override
  // Future<Either<Feiluer, List<BookModel>>> fetchMainBooksInHomePage() {

  // }
}
