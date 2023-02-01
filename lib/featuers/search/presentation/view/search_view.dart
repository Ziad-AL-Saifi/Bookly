import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/search/presentation/view/widget/custom_text_field_for_search.dart';
import 'package:book_app/featuers/search/presentation/view_model/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentation/view/widgets/best_cellse_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldForSearch(
              onChange: (p0) {
                BlocProvider.of<SearchCubit>(context)
                    .getSearchResultFromBloc(search: p0);
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Text(
                'Search Result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            const Expanded(child: ListOfBooksInSearchView()),
          ],
        ),
      ),
    );
  }
}

class ListOfBooksInSearchView extends StatelessWidget {
  const ListOfBooksInSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
        if (state is SearchSuccessful) {
          return ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return BestSellerListViewItem(
                data: state.data[index],
              );
            },
          );
        } else if (state is SearchFiald) {
          return Text(state.errorMas);
        } else {
          return const Text('pleas search for books');
        }
      }),
    );
  }
}
