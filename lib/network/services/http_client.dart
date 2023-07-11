import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_vehicle_makes/constants/app_constants.dart';

class HttpClient {
  late final Dio _dio;

  HttpClient() {
    var options = BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    );

    _dio = Dio(options);
    _dio.interceptors.addAll([
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  Future<dynamic> get(
    String apiURL, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await _dio.get(apiURL, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      log('Error logged in HTTP Client GET: ${e.message}');

      if (e.response != null) {
        log('Response data: ${e.response?.data}');
      }
      throw HttpException('${e.message}');
    }
  }
}

// class HttpException implements Exception {
//   String errorMessage;
//
//   HttpException(this.errorMessage);
// }
