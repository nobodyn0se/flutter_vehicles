import 'package:flutter/material.dart';
import 'package:flutter_vehicle_makes/constants/app_constants.dart';
import 'package:flutter_vehicle_makes/widgets/loader/loading_shimmer.dart';
import 'package:flutter_vehicle_makes/widgets/vehicle_details_card.dart';
import 'package:get/get.dart';

import '../controllers/models_page_controller.dart';
import '../models/vehicle_model.dart';
import '../widgets/error/error_view.dart';

class ModelsPage extends GetView<ModelsPageController> {
  const ModelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(controller.makeName),
      ),
      body: Obx(
        () => AnimatedSwitcher(
          duration: AppConstants.LOADING_ANIMATION_DURATION,
          child: controller.isLoading.value
              ? const LoadingShimmer(
                  itemExtent: 100,
                  itemCount: 6,
                )
              : controller.viewVehicleModels.isEmpty
                  ? const ErrorView(parameterName: 'models')
                  : ListView.builder(
                      itemCount: controller.viewVehicleModels.length,
                      itemBuilder: (BuildContext context, int index) {
                        VehicleModel vehicleModel =
                            controller.viewVehicleModels[index];

                        return VehicleDetailsCard(
                            color: Colors.indigo.shade100,
                            titleTextColor: Colors.indigo.shade900,
                            subtitleTextColor: Colors.indigo.shade700,
                            title: vehicleModel.modelName,
                            subtitle: vehicleModel.makeName,
                            onClick: () {});
                      }),
        ),
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
