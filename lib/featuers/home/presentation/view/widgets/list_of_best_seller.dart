import 'package:book_app/core/utils/public_widget/loading_end.dart';
import 'package:book_app/featuers/home/presentation/view_model/best_celler_cubit/best_seller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_cellse_item.dart';

class LisrOfBestSeller extends StatelessWidget {
  const LisrOfBestSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerCubit, BestSellerState>(
      builder: (context, state) {
        if (state is BestSellerSuccess) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                return BestSellerListViewItem(
                  data: state.data[index],
                );
              },
            ),
          );
        } else if (state is BestSellerField) {
          return Center(
            child: Text(state.errorMess),
          );
        }
        return const CustmLoadingInd();
      },
    );
  }
}
