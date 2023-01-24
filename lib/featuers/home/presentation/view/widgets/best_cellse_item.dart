import 'package:book_app/core/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(RouterViews.detailsViewRout);
        },
        child: Row(children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.81 / 4,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(16)),
                  child: Image.asset('assets/images/Book 1 Hightligh.png')),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  child: Text(
                    maxLines: 2,
                    "Harry Ptter \nand the Goblet of fire ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 128, 128, 136),
                    ),
                    'J.K.Rowling'),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: const [
                    Text(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      r"19.99 $",
                    ),
                    Spacer(),
                    rateWidget()
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class rateWidget extends StatelessWidget {
  const rateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(2390)',
          style: TextStyle(
            color: Color(0xff707070),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
