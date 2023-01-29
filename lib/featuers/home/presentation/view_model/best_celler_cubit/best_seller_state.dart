part of 'best_seller_cubit.dart';

abstract class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

class BestSellerInitial extends BestSellerState {}

class BestSellerLoading extends BestSellerState {}

class BestSellerField extends BestSellerState {
  final String errorMess;
  const BestSellerField({
    required this.errorMess,
  });
}

class BestSellerSuccess extends BestSellerState {
  final List<BookModel> data;
  const BestSellerSuccess({
    required this.data,
  });
}
