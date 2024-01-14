import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAtom extends StatelessWidget {
  const LottieAtom({super.key, required this.asset, required this.size});

  final String asset;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Lottie.asset(
        asset,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
