import 'package:get/get.dart';

class DetailsPageController extends GetxController {
  late String manufacturerName;

  @override
  void onInit() {
    super.onInit();

    // we passed the name through route arguments
    manufacturerName = Get.arguments;
  }
}
