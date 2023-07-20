import 'dart:developer';

import 'package:flutter_vehicle_makes/models/response/vehicle_make_response.dart';
import 'package:flutter_vehicle_makes/models/response/vehicle_model_response.dart';
import 'package:flutter_vehicle_makes/models/vehicle_make.dart';
import 'package:flutter_vehicle_makes/models/vehicle_model.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../models/response/manufacturers_response.dart';
import '../../models/vehicle_manufacturer.dart';

class HiveService extends GetxService {
  openHiveBox({required String boxName}) async {
    await Hive.openBox(boxName).then((_) => log('Hive Box: $boxName opened'));
  }

  registerAllHiveAdapters() {
    Hive
      ..registerAdapter(ManufacturersResponseAdapter())
      ..registerAdapter(VehicleManufacturerAdapter())
      ..registerAdapter(VehicleMakeAdapter())
      ..registerAdapter(VehicleMakeResponseAdapter())
      ..registerAdapter(VehicleModelAdapter())
      ..registerAdapter(VehicleModelResponseAdapter());
  }

  clearHiveBox({required Box box}) {
    // clear box data if internet is available
    box.clear();
    log('Internet available, box: ${box.name} cleared');
  }
}
