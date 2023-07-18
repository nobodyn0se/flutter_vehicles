import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';
import '../network/services/api_service.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ApiService());
    Get.put<HomePageController>(HomePageController());
  }
}
