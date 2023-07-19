import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/models_page_controller.dart';
import '../models/vehicle_model.dart';

class ModelsPage extends GetView<ModelsPageController> {
  const ModelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.makeName),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CupertinoActivityIndicator())
            : ListView.builder(
                itemCount: controller.viewVehicleModels.length,
                itemBuilder: (BuildContext context, int index) {
                  VehicleModel vehicleModel =
                      controller.viewVehicleModels[index];

                  return ListTile(
                    title: Text(vehicleModel.modelName),
                    subtitle: Text(vehicleModel.makeName),
                  );
                }),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton.extended(
            onPressed: () => !controller.isEndOfList.value
                ? controller.loadMoreModels()
                : null,
            backgroundColor: controller.isEndOfList.value
                ? Colors.grey
                : Theme.of(context).primaryColor,
            label: Text('Load more')),
      ),
    );
  }
}
