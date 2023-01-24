import 'package:go_router/go_router.dart';

import '../../featuers/Splash/presentation/view/splash_view.dart';
import '../../featuers/home/presentation/view/home_view.dart';

abstract class RouterViews {
  static const homeViewRouter = '/homeView';

  static final route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: homeViewRouter,
      builder: (context, state) => HomeView(),
    )
  ]);
}
