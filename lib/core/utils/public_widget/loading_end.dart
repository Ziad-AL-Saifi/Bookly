import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustmLoadingInd extends StatelessWidget {
  const CustmLoadingInd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
