// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:book_app/core/error/feilds.dart';
import 'package:book_app/core/utils/api_services.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/search/data/reop/search_repo.dart';
import 'package:dartz/dartz.dart';

class SearchRepoImp extends SearchRepo {
  Api api;
  SearchRepoImp({
    required this.api,
  });
  @override
  Future<Either<Failuer, List<BookModel>>> fetchSearchFormRepo(
      {required String search}) async {
    late Map<String, dynamic> responce;
    if (search == '' || search.isEmpty) {
      responce = await api.get(endPoint: '?q=random');
    } else {
      responce = await api.get(endPoint: '?q=$search');
    }

    List<BookModel> bookModel = [];
    for (var data in responce['items']) {
      bookModel.add(BookModel.fromMap(data));
    }
    return right(bookModel);
  }
}
