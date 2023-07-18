import 'package:flutter_vehicle_makes/network/services/api_service.dart';
import 'package:get/get.dart';

class ModelsPageController extends GetxController {
  late String makeName;

  RxBool isLoading = false.obs;

  final ApiService _apiService = Get.find<ApiService>();

  @override
  void onInit() {
    super.onInit();
    makeName = Get.arguments;
  }

  @override
  void onReady() async {
    super.onReady();
    isLoading.value = true;
    await fetchModelsForMake(makeName);
    isLoading.value = false;
  }

  fetchModelsForMake(String makeName) async {
    final response = await _apiService.getModelsForMake(makeName: makeName);
  }
}
