import 'dart:developer';

import 'package:get/get.dart';

import '../helpers/widget_helper.dart';
import '../models/vehicle_make.dart';
import '../network/services/api_service.dart';

class DetailsPageController extends GetxController {
  late String manufacturerName;
  List<VehicleMake> vehicleMakeList = [];

  RxBool isLoading = false.obs;
  RxBool listHasMakes = true.obs;

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

    if (response != null) {
      // implement calls for models
      vehicleMakeList = response.vehicleMakes;
      for (var make in vehicleMakeList) {
        log('${make.makeName}, ${make.manufacturerName}');
      }
    } else {
      listHasMakes.value = false;
    }
  }
}
