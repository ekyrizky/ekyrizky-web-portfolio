import 'package:ekyrizky_portfolio/utils/constants.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = MediaQuery.of(context).size.width /
        2 *
        (ScreenHelper.isTablet(context) ? .15 : .35);
    return ScreenHelper(
      desktop: _build(paddingHorizontal),
      tablet: _build(paddingHorizontal),
      mobile: _buildMobile(),
    );
  }

  Widget _build(double padding) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Portfolio",
            style: GoogleFonts.farro(
              color: kPrimaryColor,
              height: 1.0,
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/portfolio_vision.png',
                width: 150.0,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMobile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 52),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Portfolio",
            style: GoogleFonts.farro(
              color: kPrimaryColor,
              height: 1.0,
              fontWeight: FontWeight.w800,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/portfolio_vision.png',
                width: 100.0,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
