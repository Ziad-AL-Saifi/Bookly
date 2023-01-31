import 'package:book_app/core/utils/servier_locted.dart';
import 'package:book_app/featuers/home/data/model/book_model/book_model.dart';
import 'package:book_app/featuers/home/data/repos/home_repository_impl.dart';
import 'package:book_app/featuers/home/presentation/view/details_best_celler_view.dart';
import 'package:book_app/featuers/home/presentation/view_model/smiller_book_cubit/smiller_book_cubit.dart';
import 'package:book_app/featuers/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/Splash/presentation/view/splash_view.dart';
import '../../featuers/home/presentation/view/home_view.dart';

abstract class RouterViews {
  static const homeViewRouter = '/homeView';
  static const detailsViewRout = '/detailsViewRout';
  static const searchViewRout = '/searchView';
  static final route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeViewRouter,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: detailsViewRout,
      builder: (context, state) => BlocProvider(
        create: (context) =>
            SmillerBookCubit(repoHomeImpl: getIt.get<RepoHomeImpl>()),
        child: DetailsView(data: state.extra as BookModel),
      ),
    ),
    GoRoute(
      path: searchViewRout,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
