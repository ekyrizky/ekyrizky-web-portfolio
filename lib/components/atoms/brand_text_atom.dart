import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class BrandTextAtom extends StatelessWidget {
  const BrandTextAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Text(
          'Ekyrizky',
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: ScreenHelper.isMobile(context) ? 14 : 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
      ),
    );
  }
}
