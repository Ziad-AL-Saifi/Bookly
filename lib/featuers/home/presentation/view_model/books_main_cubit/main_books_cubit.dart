import 'package:bloc/bloc.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'main_books_state.dart';

class MainBooksCubit extends Cubit<MainBooksState> {
  MainBooksCubit() : super(MainBooksInitial());
}
