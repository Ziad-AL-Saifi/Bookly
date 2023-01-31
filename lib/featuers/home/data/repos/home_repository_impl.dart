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
    var response = await api.get(endPoint: '?q=general');

    List<BookModel> dataModel = [];
    for (var d in response['items']) {
      dataModel.add(BookModel.fromMap(d));
    }
    return right(dataModel);
  }

  @override
  Future<Either<Feiluer, List<BookModel>>> fetchMainBooksInHomePage() async {
    var response = await api.get(endPoint: '?q=general');

    List<BookModel> dataModel = [];
    for (var d in response['items']) {
      dataModel.add(BookModel.fromMap(d));
    }
    return right(dataModel);
  }

  @override
  Future<Either<Feiluer, List<BookModel>>> fetchSmillerBook(
      {required String categuary}) async {
    var response = await api.get(endPoint: '?q=$categuary');

    List<BookModel> dataModel = [];
    for (var d in response['items']) {
      dataModel.add(BookModel.fromMap(d));
    }
    return right(dataModel);
  }
}
