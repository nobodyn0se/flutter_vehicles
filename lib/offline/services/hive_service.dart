import 'dart:developer';

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
      ..registerAdapter(VehicleManufacturerAdapter());
  }
}
