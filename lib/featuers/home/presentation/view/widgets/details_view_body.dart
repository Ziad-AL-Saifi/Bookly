import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/home/presentation/view/widgets/the_details_text.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar_book_details.dart';
import 'custom_item_listview.dart';
import 'list_details_views.dart';
import 'payment_or_free_button.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.data});
  final BookModel data;
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
          child: CustomListViewItem(
            image: data.volumeInfo!.imageLinks!.thumbnail == null
                ? ''
                : data.volumeInfo!.imageLinks!.thumbnail!,
          ),
        ),
        const Expanded(
          child: SizedBox(
            height: 40,
          ),
        ),
        TheDetailsTextComponant(data: data),
        const Expanded(
          child: SizedBox(
            height: 37,
          ),
        ),
        const PaymentOrFreeButton(),
        const Expanded(child: SizedBox(height: 49)),
        const ListOfBooksInDetailsView(),
        const Expanded(child: SizedBox(height: 40))
      ],
    ));
  }
}
