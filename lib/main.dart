import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './network/services/http_client.dart';
import './routes/app_pages.dart';

void main() {
  Dio dio = Dio();
  Get.put<HttpClient>(HttpClient(dio));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vehicle Makes',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: Routes.HOME,
      getPages: AppPages.pages,
    );
  }
}
