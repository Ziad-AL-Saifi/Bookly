import 'package:book_app/core/utils/public_widget/loading_end.dart';
import 'package:book_app/featuers/home/presentation/view_model/books_main_cubit/main_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBooksCubit, MainBooksState>(
      builder: (context, state) {
        if (state is MainBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 30, top: 37),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .25,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: CustomListViewItem(),
                  );
                },
              ),
            ),
          );
        } else if (state is MainBooksField) {
          return Center(
            child: Text(state.errorMess),
          );
        } else {
          return const CustmLoadingInd();
        }
      },
    );
  }
}

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.1 / 3,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: Image.asset('assets/images/Book 1 Hightligh.png')),
      ),
    );
  }
}
