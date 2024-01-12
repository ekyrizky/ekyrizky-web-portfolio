import 'package:ekyrizky_portfolio/pages/about_page.dart';
import 'package:ekyrizky_portfolio/pages/blog_page.dart';
import 'package:ekyrizky_portfolio/pages/contact_page.dart';
import 'package:ekyrizky_portfolio/pages/home_revamp.dart';
import 'package:ekyrizky_portfolio/pages/portfolio_page.dart';
import 'package:get/route_manager.dart';

class Routes {
  static String home = '/home';
  static String about = '/about';
  static String blogs = '/blogs';
  static String contact = '/contact';
  static String portfolio = '/portfolio';
}

final getPages = [
  GetPage(
    name: Routes.home,
    page: () => HomeRevamp(),
  ),
  GetPage(
    name: Routes.about,
    page: () => const AboutPage(),
  ),
  GetPage(
    name: Routes.blogs,
    page: () => const BlogPage(),
  ),
  GetPage(
    name: Routes.contact,
    page: () => const ContactPage(),
  ),
  GetPage(
    name: Routes.portfolio,
    page: () => const PortfolioPage(),
  ),
];
