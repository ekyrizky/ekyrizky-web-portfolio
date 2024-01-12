import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class SocialIconAtom extends StatelessWidget {
  const SocialIconAtom({super.key, required this.link, required this.icon});

  final String link;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          html.window.open(link, 'new_tab');
        },
        child: Image.asset(
          icon,
          width: ScreenHelper.isMobile(context) ? 24 : 30,
          height: ScreenHelper.isMobile(context) ? 24 : 30,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
