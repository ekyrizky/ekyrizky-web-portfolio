import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class DrawerIconAtom extends StatelessWidget {
  const DrawerIconAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: const Icon(
        Icons.menu_rounded,
        color: kSecondaryColor,
        size: 28.0,
      ),
    );
  }
}
