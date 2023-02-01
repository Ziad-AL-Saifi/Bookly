import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/search/data/reop/search_repo_impl.dart';
import 'package:book_app/main.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit({required this.searchRepoImp}) : super(SearchInitial());
  SearchRepoImp searchRepoImp;
  Future<void> getSearchResultFromBloc({required String search}) async {
    emit(SearchLoading());

    var data = await searchRepoImp.fetchSearchFormRepo(search: search);

    data.fold((l) => emit(SearchFiald(errorMas: l.masserErorr)),
        (r) => emit(SearchSuccessful(data: r)));
  }
}
