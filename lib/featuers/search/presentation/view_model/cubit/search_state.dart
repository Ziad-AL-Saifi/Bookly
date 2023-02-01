// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_cubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccessful extends SearchState {
  final List<BookModel> data;
  const SearchSuccessful({
    required this.data,
  });
}

class SearchFiald extends SearchState {
  final String errorMas;
  const SearchFiald({
    required this.errorMas,
  });
}
