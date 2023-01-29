// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'main_books_cubit.dart';

abstract class MainBooksState extends Equatable {
  const MainBooksState();

  @override
  List<Object> get props => [];
}

class MainBooksInitial extends MainBooksState {}

class MainBooksLoading extends MainBooksState {}

class MainBooksField extends MainBooksState {
  final String errorMess;
  const MainBooksField({
    required this.errorMess,
  });
}

class MainBooksSuccess extends MainBooksState {
  final List<BookModel> data;
  const MainBooksSuccess({
    required this.data,
  });
}
