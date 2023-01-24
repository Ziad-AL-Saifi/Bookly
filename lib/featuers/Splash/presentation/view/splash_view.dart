import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/router.dart';
import 'package:book_app/featuers/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/constant.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> ziadFirstAnimation;

  @override
  initState() {
    super.initState();
    animationLogo();

    transition();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Image.asset(AssetsData.logo),
        ),
        const SizedBox(
          height: 15,
        ),
        AnimatedBuilder(
            animation: ziadFirstAnimation,
            builder: (context, _) {
              return SlideTransition(
                  position: ziadFirstAnimation,
                  child: const Text('Read free book'));
            })
      ]),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void animationLogo() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    ziadFirstAnimation =
        Tween<Offset>(begin: const Offset(0, 15), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void transition() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).pushReplacement(RouterViews.homeViewRouter);
      },
    );
  }
}
