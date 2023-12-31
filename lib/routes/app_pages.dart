import 'package:flutter_vehicle_makes/bindings/details_page_binding.dart';
import 'package:flutter_vehicle_makes/bindings/home_page_binding.dart';
import 'package:get/get.dart';

import '../pages/details_page.dart';
import '../pages/home_page.dart';
import '../pages/models_page.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => HomePage(), binding: HomePageBinding()),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsPageBinding()),
    GetPage(
        name: Routes.MODELS,
        page: () => ModelsPage(),
        binding: DetailsPageBinding()),
    //GetPage(name: Routes.SPLASH),
  ];
}
