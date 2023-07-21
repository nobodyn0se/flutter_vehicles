import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/widgets/loader/loading_shimmer.dart';
import 'package:flutter_vehicle_makes/widgets/vehicle_details_card.dart';
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
            ? const LoadingShimmer(
                itemExtent: 100,
                itemCount: 6,
              )
            : controller.viewVehicleModels.isEmpty
                ? Center(
                    child: Text('Unable to load models for this make'),
                  )
                : ListView.builder(
                    itemCount: controller.viewVehicleModels.length,
                    itemBuilder: (BuildContext context, int index) {
                      VehicleModel vehicleModel =
                          controller.viewVehicleModels[index];

                      return VehicleDetailsCard(
                          title: vehicleModel.modelName,
                          subtitle: vehicleModel.makeName,
                          onClick: () {});
                    }),
      ),
      floatingActionButton: Obx(
        () => FloatingActionButton.extended(
            // disable button with a grey background if list is exhausted
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
