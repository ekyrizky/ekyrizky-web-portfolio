import 'package:ekyrizky_portfolio/components/portfolio/portfolio_desc.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    double paddingHorizontal = MediaQuery.of(context).size.width /
        2 *
        (ScreenHelper.isTablet(context) ? .15 : .30);
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/portfolio_vision.png',
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: padding,
              ),
              const Expanded(
                child: PortfolioDesc(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMobile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 52),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/portfolio_vision.png',
            width: 200.0,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 16,
          ),
          const PortfolioDesc(),
        ],
      ),
    );
  }
}
