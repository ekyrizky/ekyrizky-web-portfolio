import 'package:ekyrizky_portfolio/components/portfolio/portfolio_desc.dart';
import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

List<PortfolioModel> portfolioItems = [
  PortfolioModel(
      title: "Vision+",
      category: "Android App",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      image: 'assets/portfolio_vision.png'),
  PortfolioModel(
      title: "Detikcom",
      category: "Android App",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      image: 'assets/portfolio_detikcom.png'),
  PortfolioModel(
      title: "CNN Indonesia",
      category: "Android App",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      image: 'assets/portfolio_cnn.png'),
  PortfolioModel(
      title: "CNBC Indonesia",
      category: "Android App",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      image: 'assets/portfolio_cnbc.png'),
  PortfolioModel(
      title: "Haibunda",
      category: "Android App",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      image: 'assets/portfolio_haibunda.png'),
  PortfolioModel(
      title: "insertlive",
      category: "Android App",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      image: 'assets/portfolio_insertlive.png'),
  PortfolioModel(
      title: "Stonks Calculator",
      category: "Android App",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
      image: 'assets/portfolio_stonks.png'),
];

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
