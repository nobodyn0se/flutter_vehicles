import 'package:dio/dio.dart';
import 'package:flutter_vehicle_makes/models/response/manufacturers_response.dart';

import 'http_client.dart';

class ApiService {
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

  Future<dynamic> getMakeForManufacturer({
    required String manufacturerName,
    String format = 'json',
  }) async {
    try {
      String queryParams = '$manufacturerName?format=$format';

      var response = await http.get('/GetMakeForManufacturer/$queryParams');
      //log('GET response for make from $manufacturerName: $response');
      return response;
    } on HttpException {
      return null;
    }
  }
}
