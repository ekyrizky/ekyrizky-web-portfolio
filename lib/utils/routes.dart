import 'package:ekyrizky_portfolio/pages/home_page.dart';
import 'package:get/route_manager.dart';

class Routes {
  static String home = '/home';
}

final getPages = [
  GetPage(
    name: Routes.home,
    page: () => const HomePage(),
  ),
];
