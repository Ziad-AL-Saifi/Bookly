import 'package:book_app/core/error/feilds.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failuer, List<BookModel>>> fetchSearchFormRepo(
      {required String search});
}
