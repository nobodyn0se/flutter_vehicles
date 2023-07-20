import 'dart:developer';

import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../models/vehicle_manufacturer.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isPageLoading = false.obs;

  List<VehicleManufacturer> manufacturersList = [];

  RxList<VehicleManufacturer> viewManufacturersList =
      RxList<VehicleManufacturer>([]);

  late Box manufacturersBox;

  int currentLoadedPage = 1;

  int currentItems = 0;
  final int itemsPerPage = 20;

  bool get listHasError => currentItems == 0 && isLoading.value == false;

  bool isInternetConnected = true;

  final ApiService _apiService = Get.find<ApiService>();

  //Detect if we have reached the end of responses
  RxBool listHasNextPage = true.obs;

  @override
  void onInit() async {
    super.onInit();
    manufacturersBox = Hive.box('VehicleManufacturers');

    isInternetConnected = await InternetConnectionChecker().hasConnection;

    log('Connectivity : $isInternetConnected');

    if (isInternetConnected) {
      // clear box data if internet is available
      manufacturersBox.clear();
      log('Internet available, box data cleared');
    }
  }

  @override
  void onReady() async {
    super.onReady();
    isLoading.value = true;
    await fetchAllManufacturers(currentLoadedPage);
    isLoading.value = false;
  }

  @override
  void onClose() {
    Hive.close();
    super.onClose();
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

        final offlineList = manufacturersBox.get('viewManufacturersList');

        if (offlineList == null) {
          // init list if not present
          manufacturersBox.put('viewManufacturersList', []);
          log('List init done');
        }

        viewManufacturersList.addAll(manufacturersList.getRange(
            currentItems, currentItems + itemsPerPage));

        manufacturersBox.put('viewManufacturersList', manufacturersList);
        var offlineManufacturersList =
            manufacturersBox.get('viewManufacturersList');

        log(offlineManufacturersList.length.toString());

        currentItems += itemsPerPage;
      }
    }

    isPageLoading.value = false;
  }

  loadMorePages() async {
    if ((currentItems + itemsPerPage) > manufacturersList.length) {
      if (listHasNextPage.value && isInternetConnected) {
        ++currentLoadedPage;
        fetchAllManufacturers(currentLoadedPage);
      }
    } else {
      isPageLoading.value = true;

      viewManufacturersList.addAll(manufacturersList.getRange(
          currentItems, currentItems + itemsPerPage));

      currentItems += itemsPerPage;

      isPageLoading.value = false;
    }
  }
}
