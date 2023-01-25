import 'package:book_app/featuers/home/presentation/view/widgets/best_cellse_item.dart';
import 'package:book_app/featuers/home/presentation/view/widgets/the_details_text.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar_book_details.dart';
import 'custom_item_listview.dart';

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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 48,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: const Center(
                  child: Text(
                r'99.88 $',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              width: 150,
              height: 48,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50))),
              child: const Center(
                  child: Text(
                'Free preview',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            ),
          ],
        )
      ],
    ));
  }
}
