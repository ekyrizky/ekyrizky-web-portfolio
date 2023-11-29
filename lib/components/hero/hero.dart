import 'package:ekyrizky_portfolio/components/hero/hero_text.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double heroHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .75 : .60);
    double paddingHorizontal = MediaQuery.of(context).size.width /
        2 *
        (ScreenHelper.isTablet(context) ? .15 : .35);

    return Container(
      height: heroHeight,
      width: double.infinity,
      child: ScreenHelper(
        desktop: _build(paddingHorizontal),
        tablet: _build(paddingHorizontal),
        mobile: _buildMobile(),
      ),
    );
  }

  Widget _build(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: HeroText(),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200.0),
                child: Image.asset(
                  'assets/ic_profile_small.jpeg',
                  width: 220.0,
                  height: 220.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 52),
      child: HeroText(),
    );
  }
}
