import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class HeaderIcon extends StatelessWidget {
  const HeaderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset(
            'assets/ic_profile_small.jpeg',
            width: 32.0,
            height: 32.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class HeaderIconText extends StatelessWidget {
  const HeaderIconText({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: const Text(
          "Ekyrizky",
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
      ),
    );
  }
}
