import 'package:book_app/core/utils/api_services.dart';
import 'package:book_app/core/utils/constant.dart';
import 'package:book_app/core/utils/router.dart';
import 'package:book_app/core/utils/servier_locted.dart';
import 'package:book_app/featuers/home/data/repos/home_repository_impl.dart';
import 'package:book_app/featuers/home/presentation/view_model/best_celler_cubit/best_seller_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'featuers/home/presentation/view_model/books_main_cubit/main_books_cubit.dart';

void main() {
  setup();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              MainBooksCubit(repo: RepoHomeImpl(api: Api(dio: Dio())))
                ..getMainBooksCubit(),
        ),
        BlocProvider(
          create: (context) =>
              BestSellerCubit(repo: RepoHomeImpl(api: Api(dio: Dio())))
                ..getBestBooksCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: RouterViews.route,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            scaffoldBackgroundColor: kPrimaryColor),
      ),
    );
  }
}
