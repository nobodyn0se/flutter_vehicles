import 'dart:developer';
import 'dart:math' hide log;

import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../constants/app_constants.dart';
import '../models/vehicle_model.dart';

class ModelsPageController extends GetxController {
  late String makeName;

  RxBool isLoading = false.obs;

  List<VehicleModel> vehicleModels = [];
  RxList<VehicleModel> viewVehicleModels = RxList<VehicleModel>([]);

  int currentItems = 0;
  final int itemsPerPage = 20;

  RxBool isEndOfList = false.obs;

  late Box modelsBox;

  final ApiService _apiService = Get.find<ApiService>();

  @override
  void onInit() {
    super.onInit();
    makeName = Get.arguments;

    modelsBox = Hive.box(AppConstants.MODELS_BOX_NAME);
  }

  @override
  void onReady() async {
    super.onReady();
    isLoading.value = true;
    if (await InternetConnectionChecker().hasConnection) {
      await fetchModelsForMake(makeName);
    } else {
      offlineFetchModelsForMake(makeName);
      log('Offline fetch');
    }
    isLoading.value = false;
  }

  fetchModelsForMake(String makeName) async {
    final response = await _apiService.getModelsForMake(makeName: makeName);

    if (response != null) {
      vehicleModels = response.vehicleModels;

      // store fetched vehicle models to Hive box
      final offlineList = modelsBox.get(makeName);
      if (offlineList == null) {
        modelsBox.put(makeName, vehicleModels);
      }

      viewVehicleModels.addAll(vehicleModels.getRange(currentItems,
          min(vehicleModels.length, currentItems + itemsPerPage)));

      isEndOfList.value = (currentItems + itemsPerPage) > vehicleModels.length;

      currentItems += itemsPerPage;
    }
  }

  loadMoreModels() {
    if ((currentItems + itemsPerPage) > vehicleModels.length) {
      // end of the list
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

  offlineFetchModelsForMake(String makeName) {
    final offlineList = modelsBox.get(makeName);

    if (offlineList != null) {
      vehicleModels = List<VehicleModel>.from(offlineList);
      viewVehicleModels.addAll(vehicleModels.getRange(currentItems,
          min(vehicleModels.length, currentItems + itemsPerPage)));

      isEndOfList.value = (currentItems + itemsPerPage) > vehicleModels.length;
      currentItems += itemsPerPage;
    }
  }
}
