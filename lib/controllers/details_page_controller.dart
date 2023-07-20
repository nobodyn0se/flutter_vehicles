import 'dart:developer';

import 'package:flutter_vehicle_makes/constants/app_constants.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../helpers/widget_helper.dart';
import '../models/vehicle_make.dart';
import '../network/services/api_service.dart';

class DetailsPageController extends GetxController {
  late String manufacturerName;
  List<VehicleMake> vehicleMakeList = [];

  RxBool isLoading = false.obs;
  RxBool listHasMakes = true.obs;

  late Box manufacturersBox;

  final ApiService _apiService = Get.find<ApiService>();

  @override
  void onInit() async {
    super.onInit();

    // we passed the name through route arguments
    manufacturerName = Get.arguments;

    manufacturersBox = Hive.box(AppConstants.MANUFACTURERS_BOX_NAME);
  }

  @override
  void onReady() async {
    isLoading.value = true;
    if (await InternetConnectionChecker().hasConnection) {
      await fetchMakeForManufacturer(manufacturerName);
      log('Online fetch');
    } else {
      offlineFetchMakesForManufacturers(manufacturerName);
      log('Offline fetch');
    }
    isLoading.value = false;
  }

  fetchMakeForManufacturer(String manufacturerName) async {
    final response = await _apiService.getMakeForManufacturer(
        manufacturerName: WidgetHelper.parseManufacturerName(manufacturerName));

    if (response != null) {
      // implement calls for models
      vehicleMakeList = response.vehicleMakes.unique((make) => make.makeName);
      for (var make in vehicleMakeList) {
        log('${make.makeName}, ${make.manufacturerName}');
      }

      final offlineList = manufacturersBox.get(manufacturerName);

      if (offlineList == null) {
        // save the list of makes with manufacturer's name as the key
        manufacturersBox.put(manufacturerName, vehicleMakeList);
      }
    } else {
      listHasMakes.value = false;
    }
  }

  offlineFetchMakesForManufacturers(String manufacturerName) {
    var offlineList = manufacturersBox.get(manufacturerName);

    if (offlineList != null) {
      vehicleMakeList = List<VehicleMake>.from(offlineList);
      log('Running offline make fetch: ${vehicleMakeList.length}');

      listHasMakes.value = true;
    } else {
      listHasMakes.value = false;
    }
  }
}
