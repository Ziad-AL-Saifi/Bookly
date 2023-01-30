import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'best_cellse_item.dart';

class TheDetailsTextComponant extends StatelessWidget {
  const TheDetailsTextComponant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "The jungel book",
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text('slkdanlksd lsakdm',
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 128, 128, 136))),
        const SizedBox(
          height: 14,
        ),
        rateWidget(
          data: BookModel(),
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
