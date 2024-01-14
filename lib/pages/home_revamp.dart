import 'package:ekyrizky_portfolio/components/molecules/banner_molecule.dart';
import 'package:ekyrizky_portfolio/components/organism/carousel_organism.dart';
import 'package:ekyrizky_portfolio/components/organism/header_organism.dart';
import 'package:ekyrizky_portfolio/components/organism/hero_intro_organism.dart';
import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class HomeRevamp extends StatelessWidget {
  const HomeRevamp({super.key});

  @override
  Widget build(BuildContext context) {
    double heroHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .10 : .15);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenHelper.isMobile(context) ? 16 : 32,
                vertical: 24,
              ),
              child: HeaderOrganism(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: heroHeight,
              ),
              child: HeroIntroOrganism(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 24,
              ),
              child: CarouselOrganism(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 24,
              ),
              child: BannerMolecule(
                image: 'assets/ic_android.png',
                title: 'DESIGN',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
