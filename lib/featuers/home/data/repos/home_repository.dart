import 'package:dartz/dartz.dart';

import '../../../../core/error/feilds.dart';
import '../model/book_model/book_model.dart';

abstract class Repo {
  Future<Either<Failuer, List<BookModel>>> fetchMainBooksInHomePage();
  Future<Either<Failuer, List<BookModel>>> fetchBestSellerBooksInHomePage();
  Future<Either<Failuer, List<BookModel>>> fetchSmillerBook(
      {required String categuary});
}
