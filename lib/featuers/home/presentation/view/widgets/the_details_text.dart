import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'best_cellse_item.dart';

class TheDetailsTextComponant extends StatelessWidget {
  const TheDetailsTextComponant({super.key, required this.data});
  final BookModel data;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Text((data.volumeInfo!.title) ?? 'Unknown',
              maxLines: 2,
              style: const TextStyle(overflow: TextOverflow.fade, fontSize: 30),
              textAlign: TextAlign.center),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          data.volumeInfo!.authors?[0] ?? 'Unknown',
          style: const TextStyle(
              fontSize: 18, color: Color.fromARGB(255, 128, 128, 136)),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 14,
        ),
        RateWidget(
          data: data,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
