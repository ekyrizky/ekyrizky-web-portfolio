import 'package:ekyrizky_portfolio/components/organism/header_organism.dart';
import 'package:ekyrizky_portfolio/components/organism/hero_intro_organism.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class HomeRevamp extends StatelessWidget {
  const HomeRevamp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 24,
              ),
              child: HeaderOrganism(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: HeroIntroOrganism(),
            ),
          ],
        ),
      ),
    );
  }
}
