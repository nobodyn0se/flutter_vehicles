import 'dart:math';

import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';

import '../models/vehicle_model.dart';

class ModelsPageController extends GetxController {
  late String makeName;

  RxBool isLoading = false.obs;

  List<VehicleModel> vehicleModels = [];
  RxList<VehicleModel> viewVehicleModels = RxList<VehicleModel>([]);

  int currentItems = 0;
  final int itemsPerPage = 20;

  RxBool isEndOfList = false.obs;

  final ApiService _apiService = Get.find<ApiService>();

  @override
  void onInit() {
    super.onInit();
    makeName = Get.arguments;
  }

  @override
  void onReady() async {
    super.onReady();
    isLoading.value = true;
    await fetchModelsForMake(makeName);
    isLoading.value = false;
  }

  fetchModelsForMake(String makeName) async {
    final response = await _apiService.getModelsForMake(makeName: makeName);

    if (response != null) {
      vehicleModels = response.vehicleModels;

      viewVehicleModels.addAll(vehicleModels.getRange(currentItems,
          min(vehicleModels.length, currentItems + itemsPerPage)));

      isEndOfList.value = (currentItems + itemsPerPage) > vehicleModels.length;

      currentItems += itemsPerPage;
    }
  }

  loadMoreModels() {
    if ((currentItems + itemsPerPage) > vehicleModels.length) {
      //end of the list
      if (!isEndOfList.value) {
        viewVehicleModels
            .addAll(vehicleModels.getRange(currentItems, vehicleModels.length));
      }

      isEndOfList.value = true;
    } else {
      viewVehicleModels.addAll(
          vehicleModels.getRange(currentItems, currentItems + itemsPerPage));

      currentItems += itemsPerPage;
    }
  }
}
