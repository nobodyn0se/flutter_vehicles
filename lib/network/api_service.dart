import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';

import './services/http_client.dart';

class ApiService {
  HttpClient http = Get.find<HttpClient>();

  ApiService(this.http);

  Future<dynamic> getAllVehicleManufacturers({
    int page = 1,
    String format = 'json',
  }) async {
    try {
      String queryParams = 'format=$format&page=$page';

      var response = await http.get('/getallmanufacturers?$queryParams');

      log('GET response for all manufacturers: $response');
      return response;
    } on HttpException {
      return null;
    }
  }
}
