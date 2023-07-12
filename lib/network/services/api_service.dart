import 'dart:developer';

import 'package:dio/dio.dart';

import 'http_client.dart';

class ApiService {
  Dio dio;
  late final HttpClient http;

  ApiService(this.dio) {
    http = HttpClient(dio);
  }

  ApiService.test(this.dio) {
    http = HttpClient.test(dio);
  }

  Future<dynamic> getAllVehicleManufacturers({
    int page = 1,
    String format = 'json',
  }) async {
    try {
      String queryParams = 'format=$format&page=$page';

      var response = await http
          .get('/getallmanufacturers?$queryParams'); // fix these for tests

      log('GET response for all manufacturers: $response');
      return response;
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
      log('GET response for make from $manufacturerName: $response');
      return response;
    } on HttpException {
      return null;
    }
  }
}
