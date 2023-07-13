import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';

import '../models/vehicle_manufacturer.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  List<VehicleManufacturer> manufacturersList = [];

  RxList<VehicleManufacturer> viewManufacturersList =
      RxList<VehicleManufacturer>([]);

  int currentLoadedPage = 1;

  int currentItems = 0;
  final int itemsPerPage = 20;

  final ApiService _apiService = Get.find<ApiService>();

  @override
  void onInit() {
    super.onInit();
    fetchAllManufacturers(currentLoadedPage);
  }

  fetchAllManufacturers(int page) async {
    isLoading.value = true;

    final response = await _apiService.getAllVehicleManufacturers(page: page);
    if (response != null) {
      manufacturersList = [
        ...manufacturersList,
        ...response.vehicleManufacturers
      ];

      viewManufacturersList.addAll(manufacturersList.getRange(
          currentItems, currentItems + itemsPerPage));

      currentItems += itemsPerPage;
    }

    isLoading.value = false;
  }

  loadMorePages() async {
    if ((currentItems + itemsPerPage) > manufacturersList.length) {
      ++currentLoadedPage;
      fetchAllManufacturers(currentLoadedPage);
    } else {
      viewManufacturersList.addAll(manufacturersList.getRange(
          currentItems, currentItems + itemsPerPage));

      currentItems += itemsPerPage;
    }
  }
}
