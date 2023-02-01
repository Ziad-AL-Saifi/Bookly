import 'package:book_app/core/utils/router.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  final BookModel data;
  const BestSellerListViewItem({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(RouterViews.detailsViewRout, extra: data);
        },
        child: Row(children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 2.81 / 4,
              child: CachedNetworkImage(
                imageUrl: data.volumeInfo!.imageLinks?.thumbnail == null
                    ? 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781627783040/playing-without-a-partner-9781627783040_xlg.jpg'
                    : data.volumeInfo!.imageLinks!.thumbnail!,
                placeholder: (context, url) => const Icon(Icons.error),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Text(
                    data.volumeInfo!.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  data.volumeInfo!.authors?[0] == null
                      ? 'Un Known'
                      : data.volumeInfo!.authors![0],
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 128, 128, 136),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    const Text(
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      r"19.99 $",
                    ),
                    const Spacer(),
                    RateWidget(
                      data: data,
                    )
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

class RateWidget extends StatelessWidget {
  final BookModel data;
  const RateWidget(
      {Key? key,
      required this.data,
      this.mainAxisAlignment = MainAxisAlignment.center})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          data.volumeInfo?.averageRating == null
              ? '0'
              : data.volumeInfo!.averageRating.toString(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .6,
          child: Text(
            data.volumeInfo?.ratingsCount == null
                ? '(0)'
                : '(${data.volumeInfo!.ratingsCount!.toString()})',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
