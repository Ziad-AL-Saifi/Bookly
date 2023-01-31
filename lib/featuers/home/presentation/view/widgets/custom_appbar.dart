import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAddBar extends StatelessWidget {
  const CustomAddBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 10, left: 30, right: 30),
      child: Row(children: [
        Image.asset(AssetsData.logo, height: 18),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(RouterViews.searchViewRout);
            },
            icon: const Icon(Icons.search_sharp))
      ]),
    );
  }
}
