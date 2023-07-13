import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';

import '../models/vehicle_manufacturer.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<VehicleManufacturer> manufacturersList =
      RxList<VehicleManufacturer>([]);

  int currentLoadedPage = 1;

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
      manufacturersList.value = [...response.vehicleManufacturers];
    }

    //log(manufacturersList.length.toString());
    isLoading.value = false;
  }

  loadMorePages() async {
    ++currentLoadedPage;
    fetchAllManufacturers(currentLoadedPage);
  }
}
