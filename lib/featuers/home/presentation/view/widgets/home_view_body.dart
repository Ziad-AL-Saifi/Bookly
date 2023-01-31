import 'package:book_app/core/utils/style.dart';
import 'package:book_app/featuers/home/presentation/view/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_item_listview.dart';
import 'list_of_best_seller.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAddBar(),
        Expanded(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListViewItem(),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text('Best Seller', style: Styles.midFont),
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(child: LisrOfBestSeller())
            ],
          ),
        ),
      ],
    );
  }
}
