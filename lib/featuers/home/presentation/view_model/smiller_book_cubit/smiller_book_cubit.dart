import 'package:bloc/bloc.dart';
import 'package:book_app/core/utils/api_services.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/home/data/repos/home_repository_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/error/feilds.dart';

part 'smiller_book_state.dart';

class SmillerBookCubit extends Cubit<SmillerBookState> {
  SmillerBookCubit({required this.repoHomeImpl}) : super(SmillerBookInitial());
  final RepoHomeImpl repoHomeImpl;

  Future<void> getSmillerBook({required String cate}) async {
    emit(SmillerBookLoading());
    var data = await repoHomeImpl.fetchSmillerBook(categuary: cate);
    data.fold((fiald) {
      emit(SmillerBookFaild(errorMas: fiald.masserErorr));
    }, (success) {
      emit(SmillerBookSuccessful(data: success));
    });
  }
}
