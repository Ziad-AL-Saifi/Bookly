import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/search/presentation/view/widget/custom_text_field_for_search.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/view/widgets/best_cellse_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomTextFieldForSearch(),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Text(
                'Search Result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              ),
            ),
            Expanded(child: ListOfBooksInSearchView()),
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
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerListViewItem(
            data: BookModel(),
          );
        },
      ),
    );
  }
}
