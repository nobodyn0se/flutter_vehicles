import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';

import '../models/vehicle_manufacturer.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isPageLoading = false.obs;

  List<VehicleManufacturer> manufacturersList = [];

  RxList<VehicleManufacturer> viewManufacturersList =
      RxList<VehicleManufacturer>([]);

  int currentLoadedPage = 1;

  int currentItems = 0;
  final int itemsPerPage = 20;

  bool get listHasError => currentItems == 0 && isLoading.value == false;

  final ApiService _apiService = Get.find<ApiService>();

  //Detect if we have reached the end of responses
  RxBool listHasNextPage = true.obs;

  @override
  void onReady() async {
    super.onReady();
    isLoading.value = true;
    await fetchAllManufacturers(currentLoadedPage);
    isLoading.value = false;
  }

  fetchAllManufacturers(int page) async {
    isPageLoading.value = true;

    final response = await _apiService.getAllVehicleManufacturers(page: page);
    if (response != null) {
      listHasNextPage.value = response.count != 0;

      if (response.vehicleManufacturers.isNotEmpty) {
        manufacturersList = [
          ...manufacturersList,
          ...response.vehicleManufacturers
        ];

        viewManufacturersList.addAll(manufacturersList.getRange(
            currentItems, currentItems + itemsPerPage));

        currentItems += itemsPerPage;
      }
    }

    isPageLoading.value = false;
  }

  loadMorePages() async {
    if ((currentItems + itemsPerPage) > manufacturersList.length) {
      ++currentLoadedPage;
      fetchAllManufacturers(currentLoadedPage);
    } else {
      isPageLoading.value = true;

      viewManufacturersList.addAll(manufacturersList.getRange(
          currentItems, currentItems + itemsPerPage));

      currentItems += itemsPerPage;

      isPageLoading.value = false;
    }
  }
}
