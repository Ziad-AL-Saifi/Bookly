// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/repos/home_repository.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  Repo repo;
  BestSellerCubit({
    required this.repo,
  }) : super(BestSellerInitial());

  Future<void> getBestBooksCubit() async {
    emit(BestSellerLoading());
    var data = await repo.fetchBestSellerBooksInHomePage();
    data.fold((l) => emit(BestSellerField(errorMess: l.masserErorr)),
        (r) => emit(BestSellerSuccess(data: r)));
  }
}
