import 'package:flutter_vehicle_makes/bindings/home_page_binding.dart';
import 'package:get/get.dart';

import '../pages/details_page.dart';
import '../pages/home_page.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => HomePage(), binding: HomePageBinding()),
    GetPage(name: Routes.DETAILS, page: () => DetailsPage()),
    //GetPage(name: Routes.SPLASH),
  ];
}
