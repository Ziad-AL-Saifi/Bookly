import 'package:flutter/material.dart';

import 'best_cellse_item.dart';

class LisrOfBestSeller extends StatelessWidget {
  const LisrOfBestSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        },
      ),
    );
  }
}
