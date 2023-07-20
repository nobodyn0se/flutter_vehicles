import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_vehicle_makes/constants/app_constants.dart';

class HttpClient {
  late final Dio dio;

  HttpClient() {
    var options = BaseOptions(
      baseUrl: AppConstants.BASE_URL,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
    );

    dio = Dio(options);
    dio.interceptors.addAll([
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  HttpClient.test(this.dio);

  Future<dynamic> get(
    String apiURL, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      var response = await dio.get(apiURL, queryParameters: queryParameters);
      return response.data;
    } on DioException catch (e) {
      log('Error logged in HTTP Client GET: ${e.message}');

      if (e.response != null) {
        log('Response data: ${e.response?.data}');
      }
      throw HttpException('${e.message}');
    }
  }

  Future<dynamic> post(
    String apiURL, {
    data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool encodeJson = true,
  }) async {
    try {
      var response = await dio.post(apiURL,
          options: Options(headers: headers),
          data: encodeJson ? jsonEncode(data) : data,
          queryParameters: queryParameters);

      return response.data;
    } on DioException catch (e) {
      log('Error logged in HTTP Client POST: ${e.message}');

      if (e.response != null) {
        log('Response data: ${e.response?.data}');
      }

      throw HttpException('${e.message}');
    }
  }
}

class HttpException implements Exception {
  String errorMessage;

  HttpException(this.errorMessage);
}
