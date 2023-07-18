import 'package:dio/dio.dart';
import 'package:flutter_vehicle_makes/models/response/manufacturers_response.dart';
import 'package:flutter_vehicle_makes/models/response/vehicle_make_response.dart';
import 'package:flutter_vehicle_makes/models/response/vehicle_model_response.dart';
import 'package:get/get.dart';

import 'http_client.dart';

class ApiService extends GetxService {
  late final Dio dio;
  late final HttpClient http;

  ApiService() {
    http = HttpClient();
  }

  ApiService.test(this.dio) {
    http = HttpClient.test(dio);
  }

  Future<ManufacturersResponse?> getAllVehicleManufacturers({
    int page = 1,
    String format = 'json',
  }) async {
    try {
      String queryParams = 'format=$format&page=$page';

      var response = await http
          .get('/getallmanufacturers?$queryParams'); // fix these for tests

      //log('GET response for all manufacturers: $response');
      return ManufacturersResponse.fromJson(response);
    } on HttpException {
      return null;
    }
  }

  Future<VehicleMakeResponse?> getMakeForManufacturer({
    required String manufacturerName,
    String format = 'json',
  }) async {
    try {
      String queryParams = '$manufacturerName?format=$format';

      var response = await http.get('/GetMakeForManufacturer/$queryParams');
      //log('GET response for make from $manufacturerName: $response');
      return VehicleMakeResponse.fromJson(response);
    } on HttpException {
      return null;
    }
  }

  Future<VehicleModelResponse?> getModelsForMake(
      {required String makeName, String format = 'json'}) async {
    try {
      String queryParams = '$makeName?format=$format';

      var response = await http.get('/getmodelsformake/$queryParams');

      return VehicleModelResponse.fromJson(response);
    } on HttpException {
      return null;
    }
  }
}
