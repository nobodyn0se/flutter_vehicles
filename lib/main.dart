import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/bindings/home_page_binding.dart';
import 'package:flutter_vehicle_makes/constants/app_constants.dart';
import 'package:flutter_vehicle_makes/offline/services/hive_service.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import './routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Get.put<HiveService>(HiveService());
  final hiveService = Get.find<HiveService>();

  hiveService.registerAllHiveAdapters();
  await hiveService.openHiveBox(boxName: AppConstants.MANUFACTURERS_BOX_NAME);
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
      initialBinding: HomePageBinding(),
      getPages: AppPages.pages,
    );
  }
}
