import 'package:book_app/core/utils/api_services.dart';
import 'package:book_app/core/utils/constant.dart';
import 'package:book_app/core/utils/router.dart';
import 'package:book_app/core/utils/servier_locted.dart';
import 'package:book_app/featuers/home/data/repos/home_repository_impl.dart';
import 'package:book_app/featuers/home/presentation/view/home_view.dart';
import 'package:book_app/featuers/home/presentation/view_model/best_celler_cubit/best_seller_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'featuers/Splash/presentation/view/splash_view.dart';
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
          create: (context) => MainBooksCubit(repo: getIt.get<RepoHomeImpl>())
            ..getMainBooksCubit(),
        ),
        BlocProvider(
          create: (context) => BestSellerCubit(repo: getIt.get<RepoHomeImpl>())
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
