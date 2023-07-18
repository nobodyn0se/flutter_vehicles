import 'package:get/get.dart';

class ModelsPageController extends GetxController {
  late String makeName;

  @override
  void onInit() {
    super.onInit();
    makeName = Get.arguments;
  }
}
