import 'package:flutter/material.dart';

import 'best_cellse_item.dart';

class LisrOfBestSeller extends StatelessWidget {
  const LisrOfBestSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const BestSellerListViewItem();
          },
        ),
      ),
    );
  }
}
