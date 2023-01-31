import 'package:book_app/core/utils/api_services.dart';
import 'package:book_app/core/utils/servier_locted.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/home/presentation/view/widgets/details_view_body.dart';
import 'package:book_app/featuers/home/presentation/view_model/smiller_book_cubit/smiller_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/home_repository_impl.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.data});

  final BookModel data;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsViewBody(
        data: widget.data,
      ),
    );
  }

  @override
  void initState() {
    BlocProvider.of<SmillerBookCubit>(context)
        .getSmillerBook(cate: widget.data.volumeInfo!.categories?[0] ?? 'all');
    super.initState();
  }
}
