// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:book_app/core/error/feilds.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import '../../../../core/utils/api_services.dart';
import 'home_repository.dart';

class RepoHomeImpl implements Repo {
  Api api;
  List<BookModel>? dataModel;

  RepoHomeImpl(
    this.api,
  );

  @override
  Future<Either<Feiluer, List<BookModel>>>
      fetchBestSellerBooksInHomePage() async {
    try {
      var data = await api.get(
          endPoint:
              '?q=subject:Programming&Filtering=free-ebooks&Projection=full&Download=epub');
      for (var doc in data['item']) {
        dataModel!.add(doc);
      }
    } catch (e) {
      if (e is DioError) {
        left(ServerFeiluer.fromErrorDio(e));
      }
    }
    return right(dataModel!);
  }

  @override
  Future<Either<Feiluer, List<BookModel>>> fetchMainBooksInHomePage() async {
    try {
      var data = await api.get(
          endPoint:
              '?q=subject:Programming&Filtering=free-ebooks&Download=epub');
      for (var doc in data['item']) {
        dataModel!.add(doc);
      }
    } catch (e) {
      if (e is DioError) {
        left(ServerFeiluer.fromErrorDio(e));
      }
    }
    return right(dataModel!);
  }
}
