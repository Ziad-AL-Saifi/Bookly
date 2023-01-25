import 'package:book_app/featuers/home/presentation/view/widgets/best_cellse_item.dart';
import 'package:book_app/featuers/home/presentation/view/widgets/the_details_text.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_book_details.dart';
import 'custom_item_listview.dart';
import 'payment_or_free_button.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var wM = MediaQuery.of(context).size.width;
    var hM = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding:
              EdgeInsets.only(left: wM * .25, right: wM * .25, top: hM * .03),
          child: const CustomListViewItem(),
        ),
        const SizedBox(
          height: 40,
        ),
        const TheDetailsTextComponant(),
        const SizedBox(
          height: 37,
        ),
        const PaymentOrFreeButton(),
        const Expanded(child: SizedBox(height: 49)),
        const ListOfBooksInDetailsView(),
        const SizedBox(height: 40)
      ],
    ));
  }
}

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
          SizedBox(
            height: 16,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CustomListViewItem(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
