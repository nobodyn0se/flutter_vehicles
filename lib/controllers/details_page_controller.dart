import 'dart:developer';

import 'package:get/get.dart';

import '../helpers/widget_helper.dart';
import '../network/services/api_service.dart';

class DetailsPageController extends GetxController {
  late String manufacturerName;

  RxBool isLoading = false.obs;

  final ApiService _apiService = Get.find<ApiService>();

  @override
  void onInit() {
    super.onInit();

    // we passed the name through route arguments
    manufacturerName = Get.arguments;
  }

  @override
  void onReady() async {
    isLoading.value = true;
    await fetchMakeForManufacturer(manufacturerName);
    isLoading.value = false;
  }

  fetchMakeForManufacturer(String manufacturerName) async {
    final response = await _apiService.getMakeForManufacturer(
        manufacturerName: WidgetHelper.parseManufacturerName(manufacturerName));

    log('Make for manufacturers list: ${response}');
  }
}
