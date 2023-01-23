import 'package:book_app/featuers/home/presentation/view/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAddBar()],
    );
  }
}
