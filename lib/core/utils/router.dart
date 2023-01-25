import 'package:book_app/featuers/home/presentation/view/details_best_celler_view.dart';
import 'package:book_app/featuers/search/presentation/view/search_view.dart';
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
      builder: (context, state) => const DetailsView(),
    ),
    GoRoute(
      path: searchViewRout,
      builder: (context, state) => const SearchView(),
    )
  ]);
}
