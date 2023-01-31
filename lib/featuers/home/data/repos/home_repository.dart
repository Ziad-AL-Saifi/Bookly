import 'package:book_app/main.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/feilds.dart';
import '../model/book_model/book_model.dart';

abstract class Repo {
  Future<Either<Feiluer, List<BookModel>>> fetchMainBooksInHomePage();
  Future<Either<Feiluer, List<BookModel>>> fetchBestSellerBooksInHomePage();
  Future<Either<Feiluer, List<BookModel>>> fetchSmillerBook(
      {required String categuary});
}
