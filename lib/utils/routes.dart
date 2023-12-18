import 'package:ekyrizky_portfolio/pages/about_page.dart';
import 'package:ekyrizky_portfolio/pages/blog_page.dart';
import 'package:ekyrizky_portfolio/pages/home_page.dart';
import 'package:ekyrizky_portfolio/pages/portfolio_page.dart';
import 'package:get/route_manager.dart';

class Routes {
  static String home = '/home';
  static String about = '/about';
  static String blog = '/blog';
  static String portfolio = '/portfolio';
}

final getPages = [
  GetPage(
    name: Routes.home,
    page: () => const HomePage(),
  ),
  GetPage(
    name: Routes.about,
    page: () => const AboutPage(),
  ),
  GetPage(
    name: Routes.blog,
    page: () => const BlogPage(),
  ),
  GetPage(
    name: Routes.portfolio,
    page: () => const PortfolioPage(),
  ),
];
