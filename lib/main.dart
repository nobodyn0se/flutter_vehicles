import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';

import './routes/app_pages.dart';

void main() {
  Get.put<ApiService>(ApiService());
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
