import 'package:get/get.dart';

import '../controllers/details_page_controller.dart';
import '../controllers/models_page_controller.dart';

class DetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    // lazy loading for details page
    Get.lazyPut(() => DetailsPageController());
    Get.lazyPut(() => ModelsPageController());
  }
}
