import 'package:ekyrizky_portfolio/components/footer/footer.dart';
import 'package:ekyrizky_portfolio/components/header/header.dart';
import 'package:ekyrizky_portfolio/components/header/header_items.dart';
import 'package:ekyrizky_portfolio/components/hero/hero.dart';
import 'package:ekyrizky_portfolio/components/portfolio/portfolio.dart';
import 'package:ekyrizky_portfolio/components/skills/skills_icons.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/globals.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: const Drawer(
        backgroundColor: kBackgroundColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: HeaderItemsDrawer(),
          ),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Header(),
            HeroSection(),
            Portfolio(),
            SkillIcons(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
