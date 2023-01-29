// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/home/data/repos/home_repository.dart';

part 'main_books_state.dart';

class MainBooksCubit extends Cubit<MainBooksState> {
  Repo repo;
  MainBooksCubit(
    this.repo,
  ) : super(MainBooksInitial());

  Future<void> getMainBooksCubit() async {
    emit(MainBooksLoading());
    var data = await repo.fetchMainBooksInHomePage();
    data.fold((l) => emit(MainBooksField(errorMess: l.masserErorr)),
        (r) => emit(MainBooksSuccess(data: r)));
  }
}
