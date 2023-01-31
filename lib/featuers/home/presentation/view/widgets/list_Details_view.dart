import 'package:book_app/core/utils/router.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/public_widget/loading_end.dart';
import '../../view_model/smiller_book_cubit/smiller_book_cubit.dart';
import 'custom_item_listview.dart';

class ListOfBooksInDetailsView extends StatelessWidget {
  const ListOfBooksInDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "You can also like",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<SmillerBookCubit, SmillerBookState>(
              builder: (context, state) {
            if (state is SmillerBookSuccessful) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * .15,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () => GoRouter.of(context).pushReplacement(
                              RouterViews.detailsViewRout,
                              extra: state.data[index]),
                          child: CustomListViewItem(
                              image: state.data[index].volumeInfo!.imageLinks
                                          ?.thumbnail ==
                                      null
                                  ? ''
                                  : state.data[index].volumeInfo!.imageLinks!
                                      .thumbnail!),
                        ));
                  },
                ),
              );
            } else if (state is SmillerBookFaild) {
              return Center(
                child: Text(state.errorMas),
              );
            } else {
              return const CustmLoadingInd();
            }
          }),
        ],
      ),
    );
  }
}
