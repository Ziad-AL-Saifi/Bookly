// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'smiller_book_cubit.dart';

abstract class SmillerBookState extends Equatable {
  SmillerBookState();

  @override
  List<Object> get props => [];
}

class SmillerBookInitial extends SmillerBookState {}

class SmillerBookLoading extends SmillerBookState {}

class SmillerBookFaild extends SmillerBookState {
  final String errorMas;
  SmillerBookFaild({required this.errorMas});
}

class SmillerBookSuccessful extends SmillerBookState {
  final List<BookModel> data;
  SmillerBookSuccessful({
    required this.data,
  });
}
