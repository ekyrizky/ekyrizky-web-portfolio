import 'package:ekyrizky_portfolio/components/portfolio/portfolio_items.dart';
import 'package:ekyrizky_portfolio/models/portfolio_model.dart';
import 'package:ekyrizky_portfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';

List<PortfolioModel> portfolioItems = [
  PortfolioModel(
    title: "Vision+",
    category: "Android App",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
    image: 'assets/portfolio_vision.png',
    storeLink: "https://play.google.com/store/search?q=visionplus&c=apps",
  ),
  PortfolioModel(
    title: "Detikcom",
    category: "Android App",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
    image: 'assets/portfolio_detikcom.png',
    storeLink: "https://play.google.com/store/search?q=detikcom&c=apps",
  ),
  PortfolioModel(
    title: "CNN Indonesia",
    category: "Android App",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
    image: 'assets/portfolio_cnn.png',
    storeLink: "https://play.google.com/store/search?q=cnn+indonesia&c=apps",
  ),
  PortfolioModel(
    title: "CNBC Indonesia",
    category: "Android App",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
    image: 'assets/portfolio_cnbc.png',
    storeLink: "https://play.google.com/store/search?q=cnbc%20indonesia&c=apps",
  ),
  PortfolioModel(
    title: "Haibunda",
    category: "Android App",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
    image: 'assets/portfolio_haibunda.png',
    storeLink: "https://play.google.com/store/search?q=haibunda&c=apps",
  ),
  PortfolioModel(
    title: "Insertlive",
    category: "Android App",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
    image: 'assets/portfolio_insertlive.png',
    storeLink: "https://play.google.com/store/search?q=insertlive&c=apps",
  ),
  PortfolioModel(
    title: "Stonks Calculator",
    category: "Android App",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
    image: 'assets/portfolio_stonks.png',
    storeLink:
        "https://play.google.com/store/apps/details?id=com.ekyrizky.stonkscalculator",
    githubLink: "https://github.com/ekyrizky/stonks-calculator",
  ),
];

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width /
        2 *
        ScreenHelper.getPadding(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:
            portfolioItems.map((item) => PortfolioItems(data: item)).toList(),
      ),
    );
  }
}
